
#include <cstdio>
#include <GL/glut.h>
#include "CConfigLoader.h"
#include <iostream>


// GLUI Live-Variables (Global Variables)
// We initilize them here, but they are modified by GLUI in reaction to the user
float arm1Rotate[16] = {
		1.0, 0.0, 0.0, 0.0,
		0.0, 1.0, 0.0, 0.0,
		0.0, 0.0, 1.0, 0.0,
		0.0, 0.0, 0.0, 1.0 };
float arm2Rotate[16] = {
		1.0, 0.0, 0.0, 0.0,
		0.0, 1.0, 0.0, 0.0,
		0.0, 0.0, 1.0, 0.0,
		0.0, 0.0, 0.0, 1.0 };
float armTranslate[2] = {0.0, 0.0};
float rotateX[2] = {0, 0};
float rotate2[2] = {0, 0};
float rotateY[2] = {0, 0};
float rotateZ[2] = {0, 0};

float hand[2] = {0, 0};
//float teapotScaleFactor = 1.0f;

// Selected GLUI Widgets
// Keep global pointers to the ones we want to change from other parts of the code
// NOTE: There is a second way to do this deomnostrated below

/* LIANNE 2014
GLUI_Spinner *scaleSpinner;
GLUI_Translation *translator;
GLUI_RadioGroup* radioButtons;
*/ 

void finger(void){
	glBegin(GL_QUADS);
		// sides
		glVertex3f(0, 0, 0);
		glVertex3f(0, 2, 0);
		glVertex3f(1, 2, -.5);
		glVertex3f(1, 0, -.5);

		glVertex3f(1, 0, -.5);
		glVertex3f(1, 2, -.5);
		glVertex3f(2, 2, 0);
		glVertex3f(2, 0, 0);

		glVertex3f(2, 0, 0);
		glVertex3f(2, 2, 0);
		glVertex3f(3, 2, 0);
		glVertex3f(3, 0, 0);

		glVertex3f(3, 0, 0);
		glVertex3f(3, 2, 0);
		glVertex3f(3, 2, -.5);
		glVertex3f(3, 0, -.5);
	
		glVertex3f(3, 2, -.5);
		glVertex3f(3, 0, -.5);
		glVertex3f(2, 0, -.5);
		glVertex3f(2, 2, -.5);

		glVertex3f(2, 0, -.5);
		glVertex3f(2, 2, -.5);
		glVertex3f(1, 2, -1);
		glVertex3f(1, 0, -1);

		glVertex3f(1, 2, -1);
		glVertex3f(1, 0, -1);
		glVertex3f(0, 0, -.5);
		glVertex3f(0, 2, -.5);
	
		// top
		glVertex3f(0, 2, 0);
		glVertex3f(0, 2, -.5);
		glVertex3f(1, 2, -1);
		glVertex3f(1, 2, -.5);

		glVertex3f(1, 2, -1);
		glVertex3f(1, 2, -.5);
		glVertex3f(2, 2, 0);
		glVertex3f(2, 2, -.5);
		
		glVertex3f(2, 2, 0);
		glVertex3f(2, 2, -.5);
		glVertex3f(3, 2, -.5);
		glVertex3f(3, 2, 0);

		// bottom
		glVertex3f(0, 0, 0);
		glVertex3f(0, 0, -.5);
		glVertex3f(1, 0, -1);
		glVertex3f(1, 0, -.5);

		glVertex3f(1, 0, -1);
		glVertex3f(1, 0, -.5);
		glVertex3f(2, 0, 0);
		glVertex3f(2, 0, -.5);
		
		glVertex3f(2, 0, 0);
		glVertex3f(2, 0, -.5);
		glVertex3f(3, 0, -.5);
		glVertex3f(3, 0, 0);

	glEnd();

}

void arm(int index){

	//Joint 1

	//Y axis currently points down, and using rotateY
	//will let the user rotate this joint about the y axis
	glRotatef(rotateY[index], 0, 1, 0);

	glColor3f(.5, .5, .5);

	glBegin(GL_TRIANGLE_STRIP);
		glVertex3f(6.5,0, 6.5);	//1
		glVertex3f(-6.5,0, 6.5);	//2
		glVertex3f(6.5, 2, 6.5);	//3
		glVertex3f(-6.5, 2, 6.5);	//4
		glVertex3f(6.5, 2, -6.5);	//5
		glVertex3f(-6.5, 2, -6.5);	//6
		glVertex3f(6.5,0, -6.5);	//7
		glVertex3f(-6.5,0, -6.5);	//8
		glVertex3f(6.5,0, 6.5);	//9
		glVertex3f(-6.5,0, 6.5); 	//10
	glEnd();
	glBegin(GL_QUADS);
		glVertex3f(6.5, 0, 6.5);	//1
		glVertex3f(6.5, 0, -6.5); 	//2
		glVertex3f(6.5, 2, -6.5);	//3
		glVertex3f(6.5, 2, 6.5);	//4 

		glVertex3f(-6.5, 0, 6.5);	//1
		glVertex3f(-6.5, 0, -6.5);	//2
		glVertex3f(-6.5, 2, -6.5);	//3
		glVertex3f(-6.5, 2, 6.5);	//4
	glEnd();


	//Joint 2


	glColor3f(.7, .7, .7);
	//translation moves the axis of rotation a bit higher than the base of the joint (for aesthetic purposes)
	glTranslatef(0,2,0);
	glRotatef(rotateX[index], 1, 0, 0);
	glTranslatef(0, -2, 0);
	glBegin(GL_QUADS);
		// Bottom (needed for when rotating)
		glVertex3f(-1.5, 2,1.5); 
		glVertex3f(1.5, 2, 1.5);
		glVertex3f(1.5, 2, -1.5);
		glVertex3f(-1.5, 2,-1.5);
		
		// Front 
		glVertex3f(-1.5, 2, 1.5);
		glVertex3f(1.5, 2, 1.5);
		glVertex3f(1.5, 11, 1.5);
		glVertex3f(-1.5, 11, 1.5);
		
		// Left Side
		glVertex3f(-1.5, 2, 1.5);
		glVertex3f(-1.5, 2, -1.5);
		glVertex3f(-1.5, 11, -1.5);
		glVertex3f(-1.5, 11, 1.5);

		// Back Side
		glVertex3f(-1.5, 2, -1.5);
		glVertex3f(1.5, 2, -1.5);
		glVertex3f(1.5, 11, -1.5);
		glVertex3f(-1.5, 11, -1.5);

		// Right Side
		glVertex3f(1.5, 2, -1.5);
		glVertex3f(1.5, 2, 1.5);
		glVertex3f(1.5, 11, 1.5);
		glVertex3f(1.5, 11, -1.5);

		// Top
		glVertex3f(-1.5, 11, 1.5);
		glVertex3f(1.5, 11, 1.5);
		glVertex3f(1.5, 11, -1.5);
		glVertex3f(-1.5, 11, -1.5);
	glEnd();

	//Joint 3

	glColor3f(.7, .9, .7);
	//translation moves the axis of rotation a bit higher than the base of the joint (for aesthetic purposes)
	glTranslatef(0,12,0);
	glRotatef(rotate2[index], 0, 1, 0);
	glTranslatef(0, -12, 0);
	glBegin(GL_QUADS);
		// Bottom (needed for when rotating)
		glVertex3f(-1.5, 11,-1.5); 
		glVertex3f(-1.5, 11, 1.5);
		glVertex3f(-1.5, 14, 1.5);
		glVertex3f(-1.5, 14,-1.5);
		
		// Front 
		glVertex3f(-1.5, 14, 1.5);
		glVertex3f(6.5, 14, 1.5);
		glVertex3f(6.5, 11, 1.5);
		glVertex3f(-1.5, 11, 1.5);
		
		// Left Side
		glVertex3f(-1.5, 11, 1.5);
		glVertex3f(6.5, 11, 1.5);
		glVertex3f(6.5, 11, -1.5);
		glVertex3f(-1.5, 11, -1.5);

		// Back Side
		glVertex3f(-1.5, 14, 1.5);
		glVertex3f(6.5, 14, 1.5);
		glVertex3f(6.5, 11, 1.5);
		glVertex3f(-1.5, 11, 1.5);

		// Right Side
		glVertex3f(-1.5, 14, 1.5);
		glVertex3f(6.5, 14, 1.5);
		glVertex3f(6.5, 14, -1.5);
		glVertex3f(-1.5, 14, -1.5);

		// Top
		glVertex3f(6.5, 11, -1.5);
		glVertex3f(6.5, 11, 1.5);
		glVertex3f(6.5, 14, 1.5);
		glVertex3f(6.5, 14, -1.5);
	glEnd();
	
	//Joint 3

	glColor3f(.5, .7, .5);
	glTranslatef(5.5, 12, -2.5);
	glRotatef(rotateZ[index], 0, 0, 1);
	glTranslatef(-5.5, -12, 2.5);
	glBegin(GL_QUADS);
		// Bottom
		glVertex3f(5.5, 12, -1.5);
		glVertex3f(5.5, 12, -3.5);
		glVertex3f(5.5, 14, -3.5);
		glVertex3f(5.5, 14, -1.5);
	
		// Front
		glVertex3f(5.5, 12, -1.5);
		glVertex3f(5.5, 14, -1.5);
		glVertex3f(10.5, 14, -1.5);
		glVertex3f(10.5, 12, -1.5);

		// Below
		glVertex3f(5.5, 12, -1.5);
		glVertex3f(5.5, 12, -3.5);
		glVertex3f(10.5, 12, -3.5);
		glVertex3f(10.5, 12, -1.5);

		// Back
		glVertex3f(5.5, 12, -3.5);
		glVertex3f(5.5, 14, -3.5);
		glVertex3f(10.5, 14, -3.5);
		glVertex3f(10.5, 12, -3.5);

		// Above
		glVertex3f(5.5, 14, -1.5);
		glVertex3f(5.5, 14, -3.5);
		glVertex3f(10.5, 14, -3.5);
		glVertex3f(10.5, 14, -1.5);

		// Top
		glVertex3f(10.5, 12, -1.5);
		glVertex3f(10.5, 14, -1.5);
		glVertex3f(10.5, 14, -3.5);
		glVertex3f(10.5, 12, -3.5);
	glEnd();


	if(hand[index] >= 0){
		hand[index] = 0;
	}else if(hand[index] <= -90){
		hand[index] = -90;
	}


	glColor3f(.7, .5, .5);
	glPushMatrix();
	// Back finger
	glTranslatef(8.5, 9, -2.5);
	glRotatef(-hand[index], 0, 1, 0);
	finger();	
	glPopMatrix();
	
	glColor3f(.7, .7, .5);
	glPushMatrix();
	// Front finger
	glTranslatef(8.5, 9, -2.5);
	glRotatef(hand[index], 0, 1, 0);
	glRotatef(180, 1, 0, 0);	
	glTranslatef(0, -2, 0);
	finger();
	glPopMatrix();
	

	glPopMatrix();
	glPopMatrix();
	//glPopMatrix();
}


void display(void) {
	// Before we do anything we need to clear the screen
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	// Leave the projection matrix alone. In this function we are constructing M_{wc,vc}
	glMatrixMode(GL_MODELVIEW);

	// Start over with a new ModelView Matrix
	glLoadIdentity();

	// Perform the camera viewing transformation
	gluLookAt(0.0f, 0.0f, -10.0f,  0.0f, 0.0f, 0.0f,  0.0f, 1.0f, 0.0f);
/*
	float yRotate[16] = {
		teapotRotate[0], 0.0, teapotRotate[2], 0.0,
		0.0, 1.0, 0.0, 0.0,
		teapotRotate[8], 0.0, teapotRotate[10], 0.0,
		0.0, 0.0, 0.0, 1.0 };
*/


	float reflect[16] = {
		-1, 0, 0, 0, 
		0, 1, 0, 0, 
		0, 0, 1, 0, 
		0, 0, 0, 1};

	glRotatef(90, 0, 0, 1);
	glTranslatef(armTranslate[0]-3, armTranslate[1], 0);
	glMultMatrixf(arm1Rotate);//This is just the identity matrix though...
	
	//Base that the whole arm sits on (this is not part of the robot)
	glColor3f(.5, .5, .7);
	glBegin(GL_QUADS);
		glVertex3f(-1.25, 1.2, -1);
		glVertex3f(-1.25, -1.2, -1);
		glVertex3f(1.25, -1.2, -1);
		glVertex3f(1.25, 1.2, -1);
	
		glVertex3f(-1.25, 1.2, 1);
		glVertex3f(-1.25, -1.2, 1);
		glVertex3f(1.25, -1.2, 1);
		glVertex3f(1.25, 1.2, 1);

		glVertex3f(-1.25, 1.2, 1);
		glVertex3f(-1.25, 1.2, -1);
		glVertex3f(-1.25, -1.2, -1);
		glVertex3f(-1.25, -1.2, 1);

		glVertex3f(1.25, 1.2, 1);
		glVertex3f(1.25, 1.2, -1);
		glVertex3f(1.25, -1.2, -1);
		glVertex3f(1.25, -1.2, 1);

		glVertex3f(-1.25, 1.2, 1);
		glVertex3f(-1.25, 1.2, -1);
		glVertex3f(1.25, 1.2, -1);
		glVertex3f(1.25, 1.2, 1);

		glVertex3f(-1.25, -1.2, 1);
		glVertex3f(-1.25, -1.2, -1);
		glVertex3f(1.25, -1.2, -1);
		glVertex3f(1.25, -1.2, 1);
	glEnd();
	

	glPushMatrix();
	glTranslatef(1.25,0 , 0);
	glScalef(.2, .2, .2);
	glRotatef(-90, 0, 0,1);
	arm(0);
	glPopMatrix();

	// Tell the API that we are done with this frame
	glFlush();
	glutSwapBuffers();
}

void init(void) {
	// We want a smooth interpolation of color between vertices
	glShadeModel(GL_SMOOTH);
	
	// Set the background color to clear to black
	glClearColor(0.0f, 0.0f, 0.0f, 0.0f);

	// Initilize the viewing transformation; in this program we never change it
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluPerspective(45, 1, 1, 100);

	// Enable z-buffering
	glEnable(GL_DEPTH_TEST);
}

void keyboard(unsigned char key, int x, int y) {
	switch(key) {

	case 'q':
	case 'Q':
		exit(0);
		break;
	case 'x':
		rotateX[0]+=5;
		break;
	case 'X':
		rotateX[0]-=5;
		break;
	case 'y':
		rotateY[0]+=5;
		break;
	case 'Y':
		rotateY[0]-=5;
		break;
	case 'z':
		rotateZ[0]+=5;
		break;
	case 'Z':
		rotateZ[0]-=5;
		break;
	case 'a':
		rotate2[0]+=5;
		break;
	case 'A':
		rotate2[0]-=5;
		break;
	case 'o':
		hand[0]-=5;
		break;
	case 'c':
		hand[0]+=5;
		break;
	default:
		break;
	}


	// Force the screen to be redrawn with new parameters.
	// If this wasn't called, you might have to wait for the user
	// to cover and then uncover the window.
	glutPostRedisplay();
}

int main(int argc, char** argv) {

	//Get dh params from xml file
	std::string str = "robots/robot.xml";
	CConfigLoader cfg(str);
	if(!cfg.LoadXml()) return 1;

	glutInit(&argc, argv);
	glutInitDisplayMode( GLUT_DOUBLE | GLUT_DEPTH | GLUT_RGB);
	glutInitWindowSize(500, 500);
	glutInitWindowPosition(100, 100);
	// We need to store this in case we do something behind GLUI's back
	int GlutWindowID = glutCreateWindow("IKSwift Robot Simulator");
	
	// Call our init function
	init();

		//std::cout << cfg.GetTable().params[0].theta  << std::endl;
    return 0;
	// Register our callbacks with GLUT
	// Note that these are actually pointers to the functions declared above.
	glutDisplayFunc(display);


	// Call GLUT's main loop, which never ends
	glutMainLoop();

	// Our program will never reach here
	return EXIT_SUCCESS;
}
