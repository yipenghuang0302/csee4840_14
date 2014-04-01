#include "Jacobian.h"


float* axis_rotation_calc(float *z, float *rotation){
	float *axis = malloc(sizeof(float) * 3);
	float temp = 0.0;
	for (int i = 0; i < 3; i++){
		for(int j = 0; j < 3; j++){
			 temp += *(z+j) * *(rotation+j+3*i);
		}
		axis[i] = temp;
		temp = 0.0;
	}
	return axis;
}

// Jacobian for 3 space is 6xNumber_of_Joints
float* compute_Jacobian_column(Joint joint, float* s, float* z){
	
	float *column=malloc(sizeof(float) * 6);
	float *rotation_block = malloc(sizeof(float) * 9);
	float *v_i;
	float *p_i = malloc(sizeof(float) * 3);

	/* Extract rotation block from T block */
	for (int j = 0; j < 3; j++){
		for(int i = 0; i < 3; i++){
			*(rotation_block+i+3*j) = *(joint.t_matrix+i+4*j);
		}
	}

	/* Calculate the axis of rotation or translation for this joint */
	v_i = axis_rotation_calc(z, rotation_block);


	/* Extract position column from T block */
	for (int i = 0; i < 3; i++)
		*(p_i+i) = *(joint.t_matrix+3+4*i);

	//How is Lianne representing joint type?
	if (joint.joint_type = 't'){
		//Joint is translational
		memcpy(column, v_i, sizeof(v_i));
		for (int i = 0; i < 3; i++)
			*(column+(3+i)) = 0;
	}
	else{
		//Joint is rotational

		//Subtraction
		for (int i = 0; i < 3; i++){
			*(s+i) = *(s+i) - *(p_i + i);
		}

		//Can I calculate the cross product this way?
		float v_x, v_y, v_z, s_x, s_y, s_z;
		v_x = *v_i;
		v_y = *(v_i + 1);
		v_z = *(v_i + 2);
		s_x = *s;
		s_x = *(s+1);
		s_z = *(s+2);

		*(column) = v_y * s_z - v_z * s_y;
		*(column+1) = v_z * s_x - v_x * s_z;
		*(column+2) = v_x * s_y - v_y * s_x;
		for (int i = 0; i < 3; i++)
			*(column+3+i) = *(v_i + i);
	}

	free(rotation_block);
	free(v_i);
	free(p_i);

	return column;
}
