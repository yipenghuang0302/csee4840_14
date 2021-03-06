#ifndef _IK_DRIVER_H
#define _IK_DRIVER_H

#include <linux/ioctl.h>

//PI
# define M_PI		3.14159265358979323846

//How many joints we have
#define MAX_JOINT 6

//Except for joint_type, all values will be stored
//in 32 bit (4 byte) registers 
#define REG_SIZE 4

//Memory offset where we store the start_signal
#define START_OFFSET 4

//Memory offset where we start to store dh-params
#define PARAM_OFFSET 64

//All dh-params for a single joint take up 32 bytes
#define JOINT_OFFSET 32

//Our fractional precision in our fixed-point representation
#define PRECISION 16

//Max and min values for any coordinates in our system in fixed-point 
#define MAX_COORD 262144
#define MIN_COORD -262144

/* DH Parameters */
#define THETA 0				//theta_i
#define L_OFFSET 1		//d_i
#define L_LENGTH 2		//a_i
#define ALPHA 3				//alpha_i
#define NUM_PARAMS 4

typedef struct {
	unsigned int start_signal; /* Tell hardware when we're ready for an iteration of the algorithm */
	unsigned int done_signal; /* Tell hardware when we're ready for an iteration of the algorithm */
	signed char joint; /* Indicate which joint we're getting/setting; -1 indicates that we're setting the target */
	unsigned char joint_type; /* The ith bit is 1 if ith joint is rotational; translational otherwise */
	signed int target[3]; /* (x,y,z) coordinates of target position */
	signed int magnitude; 
} ik_driver_arg_t;

/* ioctls and their arguments */
#define IK_DRIVER_WRITE_PARAM _IOW('q', 1, ik_driver_arg_t *)
#define IK_DRIVER_READ_PARAM  _IOR('q', 2, ik_driver_arg_t *)

#endif
