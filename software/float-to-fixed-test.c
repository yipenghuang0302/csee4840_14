#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <string.h>
#include <math.h>

#define PRECISION 14

static int float_to_fixed(float num){
	int neg = 0;
	char *strnum = (char *)malloc(sizeof(char) * 100);
	sprintf(strnum, "%f", num);
	if (*strnum == '-')
		neg = 1;
	int decimal = (int)num << PRECISION; //Decimal part of number
	printf("The decimal portion is %d\n", decimal);
	int fraction;
	strnum = strchr(strnum, '.');
	printf("The rest of the number is %s\n", strnum);
	sprintf(strnum, "%f", (float)(1 << PRECISION) * atof(strnum));//Fractional part of number
	printf("The rest of the number is %s\n", strnum);
	//Check if we need to round up 
	if (*(strchr(strnum, '.') + 1) >= '5' && *(strchr(strnum, '.') + 1) <= '9')
		fraction = (int)(atof(strnum) + 1);
	else
		fraction = (int)(atof(strnum));
	if (neg)
		fraction = -fraction;
	return decimal + fraction;
}

int main(){
	float f = -5.4321;
	float g = -3.0;
	printf("The fixed-point equivalent of %f is %d\n", f, float_to_fixed(f));
	printf("The fixed-point equivalent of %f is %d\n", g, float_to_fixed(g));
	printf("%f + %f = %f", f, g, (float_to_fixed(f) + float_to_fixed(g))/pow(2,14));
}
