#include <"Jacobian.h">

// Jacobian for 3 space is 3xNumber_of_Joints
float* compute_Jacobian_column(Joint joint, float* s, float* z){
	
	float *column=calloc(sizeof(float) * 6);
	float *rotation_block = malloc(sizeof(float) * 9);
	float *v_i = malloc(sizeof(float) * 3);
	float *p_i = malloc(sizeof(float) * 3);

	/* Extract rotation block from T block */
	for (int j = 0; j < 3; j++){
		for(int i = 0; i < 3; i++){
			*(rotation_block+i+3*j) = *(joint.t_matrix+i+4*j);
		}
	}

	/* Calculate the axis of rotation or translation for this joint */


	/* Extract position column from T block */
	for (int i = 0; i < 3; i++)
		*(p_i+i) = *(joint.t_matrix+3);//TODO



	free(rotation_block);
	//How is Lianne representing joint type?
	if (joint.joint_type = 't'){
		//Joint is translational
		memcpy(column, v_i, sizeof(v_i))
		free(v_i)
		return column;
	}
	else{
		//Joint is rotational


	}


}
