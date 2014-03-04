CC=g++
CFLAGS=-c -Wall -I /proj/castl/home/yipeng/kirillv/eigen/Eigen/
# -I /usr/include/eigen3/Eigen
LDFLAGS=
SOURCES=src/pugixml.cpp lexer.cpp CConfigLoader.cpp CLink.cpp CJoint.cpp CRobot.cpp CMatrixFactory.cpp CAlgoFactory.cpp CJacobian.cpp CJacobianTranspose.cpp CJacobianPseudoInverse.cpp CDumpedLeastSquares.cpp testApp.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=testApp

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm *.o testApp