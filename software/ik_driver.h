#ifndef _IK_DRIVER_H
#define _IK_DRIVER_H

#include <linux/ioctl.h>

/* Directions the ball can go */
#define THETA 0
#define L_OFFSET 1
#define L_DISTANCE 2
#define ALPHA 3

typedef struct {
	unsigned char target[3]; /* (x,y,z) coordinates of target position */
	unsigned char joint; /* Indicate which joint we're getting/setting */
	unsigned char joint_type; /* The ith bit is 1 if ith joint is rotational; translational otherwise */
	unsigned char parameter; /* Which DH param we're getting/setting */
	unsigned short magnitude; 
} ik_driver_arg_t;

/* ioctls and their arguments */
#define IK_DRIVER_WRITE_PARAM _IOW('q', 1, ik_driver_arg_t *)
#define IK_DRIVER_READ_PARAM  _IOR('q', 2, ik_driver_arg_t *)

#endif
