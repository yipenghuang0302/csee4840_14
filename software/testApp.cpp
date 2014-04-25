#include "CConfigLoader.h"
#include <iostream>

int main()
{
    std::string str = "robots/robot.xml";
    CConfigLoader cfg(str);
    if(!cfg.LoadXml()) return 1;
		//std::cout << cfg.GetTable().params[0].theta  << std::endl;
    return 0;
}
