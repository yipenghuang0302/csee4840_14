#include "IK_interface.h"

#define DEF_MAX_JOINTS 8
Robot robot;
float target[3] = {0,0,0};

void configure_IK(joint_data* new_data){
	if(NULL == robot){
		robot = malloc(sizeof(robot));
		robot.jd = malloc(sizeof(joint_data)*DEF_MAX_JOINTS*4);
	}
	robot.jd[new_data->joint] = &new_data;
}
 
void get_joints(joint_data* old_joint){
	old_joint->joint_type = robot.jd[old_joint->joint].joint_type;
	old_joint->parameter = 
}
void set_target(float x, float y, float z){
	target[0] = x;
	target[1] = y;
	target[2] = z;
}

