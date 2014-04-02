#include "IK_interface.h"


joint_dev configuration; 

void configure_IK(joint_config* new_data){
	if(new_data->start){
        // do algorithm
        int i;
        Matrix_16 Ts[6];
        Ts[0] = get_T_matrix(
                        configuration.dh_params[L_DISTANCE],
                        configuration.dh_params[ALPHA],
                        configuration.dh_params[THETA],
                        configuration.dh_params[ALPHA]);
        for(i = 1; i < JOINT_DOF-1; i++){
            Ts[i] = get_T_matrix(
                        configuration.dh_params[i*4+L_DISTANCE],
                        configuration.dh_params[i*4+ALPHA],
                        configuration.dh_params[i*4+THETA],
                        configuration.dh_params[i*4+ALPHA]);
           Ts[i] = matrix_mult(Ts[i-1], Ts[i]); 
        }

        
    }else{
        // set parameters
        configuration.dh_params[new_data->joint * 4 + new_data->parameter] = 
            new_data->magnitude;
    }
}
