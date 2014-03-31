#include "IK_interface.h"

#define DEF_MAX_JOINTS 6

joint_dev configuration; 

void configure_IK(joint_config* new_data){
	if(new_data->start){
        // do algorithm
        
    }else{
        // set parameters
        configuration.dh_params[new_data->joint * 4 + new_data->parameter] = 
            new_data->magnitude;
    }
}
