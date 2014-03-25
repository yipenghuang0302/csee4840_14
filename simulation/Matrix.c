#include "Matrix.h"
#include <stdio.h>

Matrix_16 new_matrix_16(){
	return malloc(sizeof(float)*16);
}

void destroy_matrix_16(Matrix_16 m){
	free(m);
}

float dot_product(Matrix_16 first, Matrix_16 second, int f, int s){
	float answer = first[f]*second[s] + 
                 first[f+1]*second[s+4] +
                 first[f+2]*second[s+8] +
                 first[f+3]*second[s+12];
	return answer;
}

void print_matrix(Matrix_16 mat){
	int i;
	int j;
	printf("[\n");
	for(i = 0; i < 4; i++){
		for(j = 0; j < 4; j++){
			printf(" %f ", mat[i*4+j]);
		}
		printf("\n");
	}
	printf("]\n");
}

Matrix_16 matrix_mult(Matrix_16 first, Matrix_16 second){
	Matrix_16 answer = new_matrix_16(); 
	int count = 0;
	int i;
	for(i = 0; i < 4; i++){
		int j;
		for(j = 0; j < 4; j++){ 
			answer[count] = dot_product(first, second, i*4, j);
			count++;
		}
	}
	
	return answer;
}


// test matrix mult
/*int main(int argc, char* argv[]){
	Matrix_16 first = malloc(sizeof(float)*16); 
	Matrix_16 second = malloc(sizeof(float)*16);
  int i;
  for( i=0; i <16; i++){
		first[i] = i;
		if(i%5 == 0){
			second[i] = 1;
		}
	}
	printf("First Matrix: \n");
	print_matrix(first);
  printf("Second Matrix: \n");
	print_matrix(second);
	Matrix_16 answer = matrix_mult(first, second);
	printf("Answer: \n");
	print_matrix(answer);
	return 0;
}
*/
