#ifndef __CCONFIGLOADER__
#define __CCONFIGLOADER__

#include "xml_help/pugixml.hpp"
#include "SharedTypes.h"
#include "config.h"

class CConfigLoader
{
    std::string fname;
    full_robot    for_load;
public:
    CConfigLoader(std::string & xml_name):fname(xml_name){}
    bool LoadXml();
    OUT full_robot & GetTable();
};

#endif
