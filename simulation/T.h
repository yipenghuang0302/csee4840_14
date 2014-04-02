#ifndef __TH__
#define __TH__

#include "IK_types.h"
#include "Matrix.h"
#include <math.h>
#include <stdlib.h>
#include <stdio.h>

// theta and alpha must be in radians
Matrix_16 get_T_matrix(float d, float a, float theta, float alpha);

#endif
