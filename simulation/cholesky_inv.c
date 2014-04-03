#include "cholesky_inv.h"
 
Matrix_36 cholesky(Matrix_36 A/*, int n*/) {
		int n = 6;
    Matrix_36 L = new_matrix_36();
    if (L == NULL)
        exit(EXIT_FAILURE);
 
		int i;
    for (i = 0; i < n; i++){
				int j;
        for (j = 0; j < (i+1); j++) {
            float s = 0;
						int k;
            for (k = 0; k < j; k++)
                s += L[i * n + k] * L[j * n + k];
            L[i * n + j] = (i == j) ?
                           sqrt(A[i * n + i] - s) :
                           (1.0 / L[j * n + j] * (A[i * n + j] - s));
        }
 		}
    return L;
}
/* 
void show_matrix(float *A, int n) {
		int i;
    for (i = 0; i < n; i++) {
				int j;
        for (j = 0; j < n; j++)
            printf("%2.5f ", A[i * n + j]);
        printf("\n");
    }
}
*/
/* 
int main() {
    int n = 3;
    float m1[] = {25, 15, -5,
                   15, 18,  0,
                   -5,  0, 11};
    float *c1 = cholesky(m1, n);
    show_matrix(c1, n);
    printf("\n");
    free(c1);
 
    n = 4;
    float m2[] = {18, 22,  54,  42,
                   22, 70,  86,  62,
                   54, 86, 174, 134,
                   42, 62, 134, 106};
    float *c2 = cholesky(m2, n);
    show_matrix(c2, n);
    free(c2);
 
    return 0;
}
*/
