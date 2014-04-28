#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <string.h>
#include <math.h>

#define PRECISION 14

static int float_to_fixed(float num){
	int decimal = (int)num << PRECISION; //Decimal part of number
	int fraction = (1 << PRECISION) * (num - (int)num);
	//Check if we need to round up 
	if ((num - (int)num) >= .5 && (num - (int)num) <= 1.0)
		fraction += 1;
	return decimal + fraction;
}

int main(){
	float f = -5.4321;
	float g = -3.0;
	printf("The fixed-point equivalent of %f is %d\n", f, float_to_fixed(f));
	printf("The fixed-point equivalent of %f is %d\n", g, float_to_fixed(g));
	printf("%f + %f = %f", f, g, (float_to_fixed(f) + float_to_fixed(g))/pow(2,14));
}
