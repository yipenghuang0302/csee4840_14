#include "T.h"

Matrix_16 get_T_matrix(float d, float a, float theta, float alpha){
	// done in parellel on 2 sin units and 2 cos units
	float sin_theta = sin(theta);
  float cos_theta = cos(theta);
  float sin_alpha = sin(alpha);
  float cos_alpha = cos(alpha);

	// Multiply by coefficient
	float a_sin_theta = a*sin_theta;
  float a_cos_theta = a*cos_theta;

	// sin and cos multiplications
  float sin_theta_sin_alpha = sin_theta*sin_alpha;
  float sin_theta_cos_alpha = -sin_theta*cos_alpha;
  float cos_theta_sin_alpha = -cos_theta*sin_alpha;
  float cos_theta_cos_alpha = cos_theta*cos_alpha;

	Matrix_16 T_matrix = new_matrix_16();
//row 1
	T_matrix[0] = cos_theta;
	T_matrix[1] = sin_theta_cos_alpha;
	T_matrix[2] = sin_theta_sin_alpha;
	T_matrix[3] = a_cos_theta;
// row 2
	T_matrix[4] = sin_theta;
  T_matrix[5] = cos_theta_cos_alpha;
  T_matrix[6] = cos_theta_sin_alpha;
	T_matrix[7] = a_sin_theta;
// row 3
	T_matrix[8] = 0;
	T_matrix[9] = sin_alpha;
	T_matrix[10] = cos_alpha;
	T_matrix[11] = d;
// row 4
	T_matrix[12] = 0;
	T_matrix[13] = 0;
	T_matrix[14] = 0;
	T_matrix[15] = 1;
	return T_matrix;
}
