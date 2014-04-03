#include "IK_interface.h"


joint_dev configuration; 

char get_bit(int i, char joint_type){
	int bit = joint_type & ( 1<<(i));
	return bit? 'r': 't';
}

void configure_IK(joint_config* new_data){
	if(new_data->start){
        // do algorithm
        int i;
        Matrix_16 Ts[6];
				float thetas[6];
        Ts[0] = get_T_matrix(
                        configuration.dh_params[L_DISTANCE],
                        configuration.dh_params[ALPHA],
                        configuration.dh_params[THETA],
                        configuration.dh_params[ALPHA]);
				thetas[0] = configuration.dh_params[THETA];
        for(i = 1; i < JOINT_DOF-1; i++){
            Ts[i] = get_T_matrix(
                        configuration.dh_params[i*4+L_DISTANCE],
                        configuration.dh_params[i*4+ALPHA],
                        configuration.dh_params[i*4+THETA],
                        configuration.dh_params[i*4+ALPHA]);
					  thetas[i] = configuration.dh_params[i*4+THETA];
            Ts[i] = matrix_mult(Ts[i-1], Ts[i]); 
        }
				Matrix_36 jacobian = new_matrix_36();
				float* s = malloc(sizeof(float)*3);
				s[0] = Ts[5][3];
				s[1] = Ts[5][6];
				s[2] = Ts[5][9];
				float* z = malloc(sizeof(float)*3);
				z[0] = 0;
				z[1] = 0;
				z[2] = 1;
				for(i=0;i<JOINT_DOF;i++){
					Joint joint;
					joint.t_matrix = Ts[i];
					joint.joint_type = get_bit(i, new_data->joint_type);
					float* column = compute_Jacobian_column(joint,s,z); 
					int j;
					for(j = 0; j < 6; j++){
						jacobian[j*6+i] = column[j];
					}
					free(column);
				}
				Matrix_36 transpose = matrix_transpose(jacobian);
				Matrix_36 jjt = matrix_mult_6_by_6(jacobian, transpose);
				Matrix_36 lambda_sq = new_matrix_36();
				for(i = 0; i < 6; i++){
					int j;
					for(j = 0; j < 6; j++){
						lambda_sq[i*6+j] = 1;
					}
				}
				Matrix_36 jjt_lambda2 = matrix_adder(jjt, lambda_sq);
        Matrix_36 inverse = cholesky(jjt_lambda2);
				Matrix_36 jt_inverse = matrix_mult_6_by_6(transpose, inverse);
				destroy_matrix_36(jacobian);
				destroy_matrix_36(transpose);
				destory_matrix_36(jjt);
				destory_matrix_36(lambda_sq);
				destroy_matrix_36(jjt_lambda2);
				destroy_matrix_36(inverse);
				// matrix vector multiplier
				// thetas X jt_inverse -> new_thetas
				// copy new_thetas back to dh_params
    }else{
        // set parameters
        configuration.dh_params[new_data->joint * 4 + new_data->parameter] =
            new_data->magnitude;
    }
}
