#include "CConfigLoader.h"
#include <iostream>
#include "lexer.h"


full_robot & CConfigLoader::GetTable()
{
    return for_load;
}

bool CConfigLoader::LoadXml()
{
    dh_parametrs temp_struct;
		int joint_num = 0;

    std::string  temp_string;
    std::string  out_temp_string;

    pugi::xml_document doc;

    //Show robot name
    pugi::xml_parse_result result = doc.load_file(fname.c_str());
#ifdef DEBUGOUTPUTFORXML
    std::cout << "Load result: " << result.description() <<std::endl;
    std::cout << "Robot name: " << doc.child("Robot").attribute("name").value() << std::endl;
#endif

		for_load.targetx = doc.child("Robot").attribute("targetx").as_float();
		for_load.targety = doc.child("Robot").attribute("targety").as_float();
		for_load.targetz = doc.child("Robot").attribute("targetz").as_float();

#ifdef DEBUGOUTPUTFORXML
    std::cout << "Target:  " << for_load.targetx << " " << for_load.targety << " " << for_load.targetz <<std::endl;
#endif

    pugi::xml_node tools = doc.child("Robot").child("Joints");
    //Second method
    for (pugi::xml_node tool = tools.child("joint"); tool; tool = tool.next_sibling("joint"))
    {
        //Get joint name
#ifdef DEBUGOUTPUTFORXML
        std::cout << "Name: " << tool.attribute("name").value()<<std::endl;
#endif
        temp_struct.joint_name  = tool.attribute("name").value();

        //Get alphai of joint
#ifdef DEBUGOUTPUTFORXML
        std::cout << "alphai    :" << tool.attribute("alphai").value()<<std::endl;
#endif
        temp_struct.alpha       = tool.attribute("alphai").as_float();
        //Get a of joint
#ifdef DEBUGOUTPUTFORXML
        std::cout << "ai        :" << tool.attribute("ai").value()<<std::endl;
#endif
        temp_struct.a           = tool.attribute("ai").as_float();
        //Get d of joint
#ifdef DEBUGOUTPUTFORXML
        std::cout << "di        :" << tool.attribute("di").value()<<std::endl;
#endif
				temp_struct.d = tool.attribute("di").as_float();

        //Get theta of joint
#ifdef DEBUGOUTPUTFORXML
        std::cout << "theta     :" << tool.attribute("theta").value()<<std::endl;
#endif
				temp_struct.theta = tool.attribute("theta").as_float();

				temp_struct.z_joint_type = (char *)tool.attribute("type").value();



				//Add dh params for this joint to our full robot struct
				for_load.params[joint_num++] = temp_struct;
        //Clear temporary string 
        temp_string.clear();
    }

    return true;
}
