#ifndef __MATRIXH__
#define __MATRIXH__

#include <math.h>
#include <stdlib.h>
#include <stdio.h>
#include "IK_types.h"

Matrix_16 new_matrix_16();
void destroy_matrix_16();
Matrix_36 new_matrix_36();
void destroy_matrix_36();

float dot_product(Matrix_16 first, Matrix_16 second, int f, int s);
Matrix_16 matrix_mult(Matrix_16 first, Matrix_16 second);
void print_matrix(Matrix_16 mat);

float dot_product_6_by_6(Matrix_36 first, Matrix_36 second);
Matrix_36 matrix_mult_6_by_6(Matrix_36 first, Matrix_36 second);
Matrix_36 matrix_transpose(Matrix_36 m);
Matrix_36 matrix_adder(Matrix_36 f, Matrix_36 s);
float* matrix_vector_mult(Matrix_36 matrix, float* vector);
#endif
