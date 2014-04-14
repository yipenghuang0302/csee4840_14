#include "Jacobian.h"

#define M_PI 3.14159265358979323846264338327
#define DEBUG 0


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

void print_vector(char *name, float *v){
	printf("%s\n", name);
	printf("[");
	for (int i = 0; i < 3; i++)
		printf(" %f ", *(v+i));
	printf("]\n");
}

// Jacobian for 3 space is 6xNumber_of_Joints
float* compute_Jacobian_column(Joint joint, float* s, float* z){
	
	float *column=malloc(sizeof(float) * 6);
	float *rotation_block = malloc(sizeof(float) * 9);
	float *v_i;
	float *p_i = malloc(sizeof(float) * 3);

	/* Extract rotation block from T block */
	if (DEBUG)
		printf("Rotation block: \n[");
	for (int j = 0; j < 3; j++){
		for(int i = 0; i < 3; i++){
			*(rotation_block+i+3*j) = *(joint.t_matrix+i+4*j);
			if (DEBUG){
				printf(" %f ", *(rotation_block+i+3*j));
			}
		}
		if (DEBUG){
			if (j == 2)
				printf("]\n");
			else
				printf("\n");
		}
	}

	/* Calculate the axis of rotation or translation for this joint */
	v_i = axis_rotation_calc(z, rotation_block);

	if (DEBUG)
		print_vector("Axis of rotation: ", v_i);


	/* Extract position column from T block */
	for (int i = 0; i < 3; i++)
		*(p_i+i) = *(joint.t_matrix+3+4*i);

	if (DEBUG)
		print_vector("Position of joint i: ", p_i);

	//How is Lianne representing joint type?
	if (joint.joint_type == 't'){
		//Joint is translational
		memcpy(column, v_i, 3*sizeof(float));

		for (int i = 0; i < 3; i++)
			*(column+(3+i)) = 0;
	}
	else{
		//Joint is rotational

		//Subtraction
		for (int i = 0; i < 3; i++){
			*(s+i) = *(s+i) - *(p_i + i);
		}
	
		if (DEBUG)
			print_vector("Vector difference between end effector position and joint i: ", s);

		//Can I calculate the cross product this way?
		float v_x, v_y, v_z, s_x, s_y, s_z;
		v_x = *v_i;
		v_y = *(v_i + 1);
		v_z = *(v_i + 2);
		s_x = *s;
		s_y = *(s+1);
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

/*
//Testing my Jacobian column generator
int main(){

	//Parameters for column algorithm
	Joint j;
	float *s = (float *)malloc(sizeof(float) * 3);
	float *z = (float *)malloc(sizeof(float) * 3);

	//Lets give them some values

	//starting position of end effector (arbitrarily chosen)
	*(s) = 0;
	*(s+1) = 5;
	*(s+2) = 3;


	float theta_1 = M_PI/2;

	//Set up the joint


	// Translational test 
	j.joint_type = 't';//translational
	Matrix_16 T_sup0_sub1 = get_T_matrix(8.0,0, theta_1, -M_PI/2);
	print_matrix(T_sup0_sub1);
	Matrix_16 T_sup0_sub2 = matrix_mult(T_sup0_sub1, get_T_matrix(16,0,0,0));
	Matrix_16 T_sup0_sub3 = matrix_mult(T_sup0_sub2, get_T_matrix(5,0,0,0));
	j.t_matrix = T_sup0_sub3;

	// Rotational test 
	j.joint_type = 'r';//rotational
	Matrix_16 T_sup0_sub1 = get_T_matrix(8.0,0, theta_1, M_PI/2);
	print_matrix(T_sup0_sub1);
	Matrix_16 T_sup0_sub2 = matrix_mult(T_sup0_sub1, get_T_matrix(3,3.2,0,0));
	Matrix_16 T_sup0_sub3 = matrix_mult(T_sup0_sub2, get_T_matrix(0,8,0,0));
	j.t_matrix = T_sup0_sub3;



	print_matrix(j.t_matrix);


	//Unit vector pointing along current axis of translation
	*(z) = 0;
	*(z+1) = 1;
	*(z+2) = 0;

	float *column = compute_Jacobian_column(j, s, z);

	printf("[");
	for (int i = 0; i < 6; i++)
		printf(" %f ", *(column+i));
	printf("]\n");

	destroy_matrix_16(j.t_matrix);
	free(column);
	free(s);
	free(z);

}
*/
