CC=g++
CFLAGS=-c -Wall -Wextra -I /proj/castl/home/yipeng/kirillv/eigen/Eigen/ -pg
# -I /usr/include/eigen3/Eigen
LDFLAGS=-Wall -Wextra -pg
SOURCES=src/pugixml.cpp lexer.cpp CConfigLoader.cpp CLink.cpp CJoint.cpp CRobot.cpp CLineFactory.cpp CMatrixFactory.cpp CAlgoFactory.cpp CJacobian.cpp CJacobianTranspose.cpp CJacobianPseudoInverse.cpp CDumpedLeastSquares.cpp testApp.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=testApp

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm *.o testApp