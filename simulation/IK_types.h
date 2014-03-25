#ifndef __IK_TYPESH__
#define __IK_TYPESH__
typedef float* Matrix_16;

struct joint_data{
	/* the ith bit is 1 if the ith joint is rotational, 0 for translational*/
	unsigned char joint_type; 
	/* 0,1,...,JOINT_DOF-1 */
	unsigned char joint;
	/* THETA, L_OFFSET, L_DISTANCE, ALPHA */
	unsigned char parameter;
	unsigned short magnitude;
};
typedef struct joint_data joint_data;

struct joint{
	Matrix_16 t_matrix;
	char joint_type;
};

typedef struct joint Joint;
#endif
