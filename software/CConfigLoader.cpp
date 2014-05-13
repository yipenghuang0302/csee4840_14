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

    pugi::xml_document doc;

    doc.load_file(fname.c_str());

		for_load.targetx = doc.child("Robot").attribute("targetx").as_float();
		for_load.targety = doc.child("Robot").attribute("targety").as_float();
		for_load.targetz = doc.child("Robot").attribute("targetz").as_float();


    pugi::xml_node tools = doc.child("Robot").child("Joints");

    for (pugi::xml_node tool = tools.child("joint"); tool; tool = tool.next_sibling("joint"))
    {
        temp_struct.joint_name  = tool.attribute("name").value();
        temp_struct.alpha       = tool.attribute("alphai").as_float();
        temp_struct.a           = tool.attribute("ai").as_float();
				temp_struct.d = tool.attribute("di").as_float();
				temp_struct.theta = tool.attribute("theta").as_float();
				temp_struct.z_joint_type = (char *)tool.attribute("type").value();

				//Add dh params for this joint to our full robot struct
				for_load.params[joint_num++] = temp_struct;
    }

    return true;
}
