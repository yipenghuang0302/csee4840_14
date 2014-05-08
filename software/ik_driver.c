/*
 * Device driver for the Inverse Kinematics Solver
 *
 * A Platform device implemented using the misc subsystem
 *
 * Richard Townsend
 * Yipeng Huang
 * Lianne Lairmore
 *
 * "make" to build
 * insmod ik_driver.ko
 *
 * Check code style with
 * checkpatch.pl --file --no-tree ik_driver.c
 */


#include <linux/module.h>
#include <linux/init.h>
#include <linux/errno.h>
#include <linux/version.h>
#include <linux/kernel.h>
#include <linux/platform_device.h>
#include <linux/miscdevice.h>
#include <linux/slab.h>
#include <linux/io.h>
#include <linux/of.h>
#include <linux/of_address.h>
#include <linux/fs.h>
#include <linux/uaccess.h>

#include "ik_driver.h"

#define DRIVER_NAME "ik_driver"

/*
 * Information about our device
 */
struct joint_dev {
	resource_size_t start; /* Address of start of registers */
	resource_size_t size;
	void __iomem *virtbase; /* Where registers can be accessed in memory */
	u8 joint_type; // ith bit is 1 if joint is rotational; 0 for translational
	u32 target[3]; // Target position
	u32 dh_params[MAX_JOINT * NUM_PARAMS]; // Every joint has 4 parameters 
} dev;




/*
 * Write target position of the end effector and the bit vector for the joint types 
 * Assumes target position is in range and the device information has been set up
 */
static void write_target(u32 target[3], u8 joint_t)
{
	int i;
	u32 curtarget;

	iowrite8(joint_t, dev.virtbase);
	for (i = 1; i < 4; i++){
		curtarget = target[i-1];
		iowrite32(curtarget, dev.virtbase+i*REG_SIZE);
		dev.target[i-1] = curtarget;
	}
	dev.joint_type = joint_t;
}

/*
 * Write parameter for a given joint 
 * Assumes joint and parameter is in range and the device information has been set up
 */
static void write_parameter(u8 joint, u8 parameter, u32 magnitude){
	u32 mag = magnitude;
	iowrite32(mag, dev.virtbase+PARAM_OFFSET+(JOINT_OFFSET * joint)+(parameter*REG_SIZE));
	dev.dh_params[(joint) * NUM_PARAMS + parameter] = mag;
}

/*
 * Handle ioctl() calls from userspace:
 * Read or write the coordinates.
 * Note extensive error checking of arguments
 */
static long ik_driver_ioctl(struct file *f, unsigned int cmd, unsigned long arg)
{
	ik_driver_arg_t vla;

	switch (cmd) {
	case IK_DRIVER_WRITE_PARAM:
		if (copy_from_user(&vla, (ik_driver_arg_t *) arg,
				   sizeof(ik_driver_arg_t)))
			return -EACCES;
		//Distributed checks over a bunch of if statements to avoid one huge conditional
		if (vla.joint < -2 || vla.joint > MAX_JOINT) 
			return -EINVAL;
		if (vla.joint == -1 && ((vla.target[0] < MIN_COORD || vla.target[0] > MAX_COORD) ||
												   (vla.target[1] < MIN_COORD || vla.target[1] > MAX_COORD) ||
													 (vla.target[2] < MIN_COORD || vla.target[2] > MAX_COORD)))
			return -EINVAL;
		if (vla.joint != -1 && vla.parameter != THETA && vla.parameter != ALPHA && vla.parameter != L_OFFSET && vla.parameter != L_LENGTH)
			return -EINVAL;
		if (vla.joint != -1 && (vla.parameter == L_OFFSET || vla.parameter == L_LENGTH)
												&& (vla.magnitude < MIN_COORD || vla.magnitude > MAX_COORD))
			return -EINVAL;
		if (vla.joint == -1)
			write_target(vla.target, vla.joint_type);
		else
			write_parameter(vla.joint, vla.parameter, vla.magnitude);
		break;

	case IK_DRIVER_READ_PARAM:
		if (copy_from_user(&vla, (ik_driver_arg_t *) arg,
				   sizeof(ik_driver_arg_t)))
			return -EACCES;
		if (vla.joint < -2 || vla.joint > MAX_JOINT || 
				(vla.joint != -1 && 
				 (vla.parameter != THETA && vla.parameter != ALPHA && vla.parameter != L_OFFSET && vla.parameter != L_LENGTH))) 
			return -EINVAL;
		vla.magnitude = dev.dh_params[(vla.joint)*4 + vla.parameter];
		if (copy_to_user((ik_driver_arg_t *) arg, &vla,
				 sizeof(ik_driver_arg_t)))
			return -EACCES;
		break;

	default:
		return -EINVAL;
	}

	return 0;
}

/* The operations our device knows how to do */
static const struct file_operations ik_driver_fops = {
	.owner		= THIS_MODULE,
	.unlocked_ioctl = ik_driver_ioctl,
};

/* Information about our device for the "misc" framework -- like a char dev */
static struct miscdevice ik_driver_misc_device = {
	.minor		= MISC_DYNAMIC_MINOR,
	.name		= DRIVER_NAME,
	.fops		= &ik_driver_fops,
};

/*
 * Initialization code: get resources (registers) and display
 * a welcome message
 */
static int __init ik_driver_probe(struct platform_device *pdev)
{
	int ret;
	struct resource res;


	/* Register ourselves as a misc device: creates /dev/ik_driver */
	ret = misc_register(&ik_driver_misc_device);

	/* Get the address of our registers from the device tree */
	ret = of_address_to_resource(pdev->dev.of_node, 0, &res);
	if (ret) {
		ret = -ENOENT;
		goto out_deregister;
	}

	/* Make sure we can use these registers */
	if (request_mem_region(res.start, resource_size(&res),
			       DRIVER_NAME) == NULL) {
		ret = -EBUSY;
		goto out_deregister;
	}

	dev.start = res.start;
	dev.size = resource_size(&res);

	/* Arrange access to these registers */
	dev.virtbase = of_iomap(pdev->dev.of_node, 0);
	if (dev.virtbase == NULL) {
		ret = -ENOMEM;
		goto out_release_mem_region;
	}

	return 0;

out_release_mem_region:
	release_mem_region(res.start, resource_size(&res));
out_deregister:
	misc_deregister(&ik_driver_misc_device);
	return ret;
}

/* Clean-up code: release resources */
static int ik_driver_remove(struct platform_device *pdev)
{
	iounmap(dev.virtbase);
	release_mem_region(dev.start, dev.size);
	misc_deregister(&ik_driver_misc_device);
	return 0;
}

/* Which "compatible" string(s) to search for in the Device Tree */
#ifdef CONFIG_OF
static const struct of_device_id ik_driver_of_match[] = {
	{ .compatible = "altr,ik_driver" },
	{},
};
MODULE_DEVICE_TABLE(of, ik_driver_of_match);
#endif

/* Information for registering ourselves as a "platform" driver */
static struct platform_driver ik_driver_driver = {
	.driver	= {
		.name	= DRIVER_NAME,
		.owner	= THIS_MODULE,
		.of_match_table = of_match_ptr(ik_driver_of_match),
	},
	.remove	= __exit_p(ik_driver_remove),
};

/* Called when the module is loaded: set things up */
static int __init ik_driver_init(void)
{
	pr_info(DRIVER_NAME ": init\n");
	return platform_driver_probe(&ik_driver_driver, ik_driver_probe);
}

/* Called when the module is unloaded: release resources */
static void __exit ik_driver_exit(void)
{
	platform_driver_unregister(&ik_driver_driver);
	pr_info(DRIVER_NAME ": exit\n");
}

module_init(ik_driver_init);
module_exit(ik_driver_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Richard Townsend, Yipeng Huang, Lianne Lairmore");
MODULE_DESCRIPTION("IK Swift Interface");
