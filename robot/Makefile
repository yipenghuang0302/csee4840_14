LFLAGS=-lGL -lGLU -lglut -lglm -lpng -ljpeg -lopenal -lalut
LLFLAGS = -lGL -lGLU -lglut -lpng -ljpeg
CC=g++
CFLAGS=-w #-g
#INCLUDE=-I/usr/local/src/glm-0.3.1/glm/

all: robot_arm

robot_arm: robot_arm.cpp 
	$(CC) $(CFLAGS) robot_arm.cpp -o $@ $(LFLAGS)

#myHole.o: myHole.cpp myHole.h
#	$(CC) $(CFLAGS) -c myHole.cpp

#titleScreens.o: titleScreens.cpp title.h
#	$(CC) $(CFLAGS) -c titleScreens.cpp

#leader_board.o: leader_board.cpp whackAMole.h titleScreens.cpp
#	$(CC) $(CFLAGS) -c leader_board.cpp 


#arcade_level.o: arcade_level.cpp whackAMole.h
#	$(CC) $(CFLAGS) -c arcade_level.cpp

#whackAMole: whackAMole.cpp myHole.o titleScreens.o whackAMole.h arcade_level.o leader_board.o 
#	$(CC) $(CFLAGS) whackAMole.cpp myHole.o titleScreens.o arcade_level.o leader_board.o -o $@ $(LFLAGS)


clean:
	/bin/rm -f *.o robot_arm core.*
