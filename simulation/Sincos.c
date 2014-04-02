#include "Sincos.h"

/*Taylor series expansion for sine is $sin(x) = x - x^3/3! + x^5/5!$...*/
/*Taylor series expansion for cosine is $cos(x) = 1 - x^2/2! + x^4/4!$...*/
/*six terms to estimate sine and cosine*/
/*requires three square multipliers*/
/*requires seven variable multipliers*/
/*requires 10 coefficient multipliers*/
/*finish in 17 cycles*/
void sincos (short angle, short* sin_angle, short* cos_angle) {

	assert (myInt < M_PI);
	assert (myInt > -M_PI);

	short sin_x = angle;
	short cos_x = 1;

	/*delay one*/
	short x2 = angle*angle;

	/*delay two*/
	short x4 = x2*x2;
	short x3 = x2*x;
	short c_x2 = x2/2;
	cos_x += c_x2;

	/*delay three*/
	short x8 = x4*x4;
	short x7 = x4*x3;
	short x6 = x4*x2;
	short x5 = x4*x;
	short c_x4 = x4/24;
	short c_x3 = x3/6;
	cos_x += c_x4;
	sin_x += c_x3;

	/*delay four*/
	short x11 = x8*x3;
	short x10 = x8*x2;
	short x9 = x8*x;
	short c_x8 = x8/40320;
	short c_x7 = x7/5040;
	short c_x6 = x6/720;
	short c_x5 = x5/120;
	cos_x += c_x8 + c_x6;
	sin_x += c_x7 + c_x5;

	/*delay five*/
	short c_x11 = x11/39916800;
	short c_x10 = x10/3628800;
	short c_x9 = x9/362880;
	cos_x += c_x10;
	sin_x += c_x11 + c_x9;

	/*output*/
	*sin_angle = sin_x;
	*cos_angle = cos_x;
}