CC=g++
LFLAGS=-lGL -lGLU -lglut
CFLAGS=-c -Wall -Wextra -pg
LDFLAGS=-Wall -Wextra -pg
SOURCES=xml_help/pugixml.cpp lexer.cpp CConfigLoader.cpp robot_arm.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=robot_arm

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@ $(LFLAGS)

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm *.o  robot_arm
