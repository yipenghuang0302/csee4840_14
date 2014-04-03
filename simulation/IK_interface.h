#ifndef __IK_MAINH__
#define __IK_MAINH__
#include "T.h"
#include "Jacobian.h"
#include "IK_types.h"
#include "cholesky_inv.h"

#define THETA 0
#define OFFSET 1
#define L_DISTANCE 2
#define ALPHA 3
#define JOINT_DOF 6

struct joint_config {
    unsigned char target[6];
    unsigned char joint;
    unsigned char joint_type;
    unsigned char parameter;
    unsigned short magnitude;
    unsigned char start;
    unsigned char ready;
};

struct joint_dev{
		/* big endian or little endian? */
    u8 joint_type; 
    u16 target[3];
    u16 dh_params[JOINT_DOF * 4];
}

typedef struct joint_dev joint_dev;

typedef struct joint_config joint_config;

extern joint_dev configuration;

void configure_IK(joint_config* new_data);
#endif
