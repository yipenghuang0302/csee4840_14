#ifndef __MATRIXH__
#define __MATRIXH__

#include <math.h>
#include <stdlib.h>
#include <stdio.h>
#include "IK_types.h"

Matrix_16 new_matrix_16();
void destroy_matrix_16();
float dot_product(Matrix_16 first, Matrix_16 second, int f, int s);
Matrix_16 matrix_mult(Matrix_16 first, Matrix_16 second);
void print_matrix(Matrix_16 mat);

#endif
