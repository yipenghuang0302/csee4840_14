#ifndef _IK_DRIVER_H
#define _IK_DRIVER_H

#include <linux/ioctl.h>

//How many joints we have
#define MAX_JOINT 6

//PI
#define M_PI 3.14159265358979323846264338327

/* Directions the ball can go */
#define THETA 0
#define L_OFFSET 1
#define L_DISTANCE 2
#define ALPHA 3

typedef struct {
	unsigned char joint; /* Indicate which joint we're getting/setting; -1 indicates that we're setting the target */
	unsigned int target[3]; /* (x,y,z) coordinates of target position */
	unsigned char joint_type; /* The ith bit is 1 if ith joint is rotational; translational otherwise */
	unsigned char parameter; /* Which DH param we're getting/setting */
	unsigned int magnitude; 
} ik_driver_arg_t;

/* ioctls and their arguments */
#define IK_DRIVER_WRITE_PARAM _IOW('q', 1, ik_driver_arg_t *)
#define IK_DRIVER_READ_PARAM  _IOR('q', 2, ik_driver_arg_t *)

#endif
