#ifndef __SHAREDTYPES__
#define __SHAREDTYPES__


#include <stdlib.h>
#include <string>
#include "ik_driver.h"


#define IN
#define OUT

enum JointT {REVOLUTE , PRISMATIC , CONSTANTJOINT , NOTSET};
enum AxisT  {AxisX , AxisY , AxisZ};

struct dh_parametrs
{
    float a;            //Length of common normal
    float alpha;        //Angle between zi and zi-1 along xi
    float d;            //distance between xi and xi-1 along zi (variable for prismatic)
    float theta;        //Angle between xi and xi-1 along zi    (variavle for revolute)
    JointT z_joint_type;//Joint type at z-1 axis
    std::string joint_name;
};

struct full_robot
{
	dh_parametrs params[MAX_JOINT]; //Robot is fully defined by a set of params for each joint
};


#endif
