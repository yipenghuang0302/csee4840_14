#ifndef __IK_MAINH__
#define __IK_MAINH__
#include "T.h"
#include "Jacobian.h"
#include "IK_types.h"

struct robot{
	int joint_number;
	joint_data* jd;	
};
typedef struct robot Robot;

extern Robot robot;
extern float target[3];

void configure_IK(joint_data* new_data);
void get_joints(joint_data* old_joint);
void set_target(float x, float y, float z);
#endif
