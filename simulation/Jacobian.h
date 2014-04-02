#ifndef __JACOBIANH__
#define __JACOBIANH__

#include "IK_types.h"
#include "Matrix.h"
#include "T.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

float* compute_Jacobian_column(Joint joint, float* s, float* z);

#endif
