/* CSCI367 - Lab 06 - ex2.cpp
 */

// Standard includes
#include <cstdio>
#include <GL/glut.h>
#include <GL/glui.h>

// GLUI IDs
// These are used by the callback function to determine what happened
// Currently, that is just for buttons with each button getting its own number
/* LIANNE 2014
const int QUIT = 0;
const int PRINT_NAME = 1;
const int RESET = 2;
*/

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

/*
	float yRotate[16] = {
		teapotRotate[0], 0.0, teapotRotate[2], 0.0,
		0.0, 1.0, 0.0, 0.0,
		teapotRotate[8], 0.0, teapotRotate[10], 0.0,
		0.0, 0.0, 0.0, 1.0 };
	
	float xRotate[16] = {
		1.0, 0.0, 0.0, 0.0,
		0.0, teapotRotate[5], teapotRotate[6], 0.0,
		0.0, teapotRotate[9], teapotRotate[10], 0.0,
		0.0, 0.0, 0.0, 1.0 };

	float zRotate[16] = {
		teapotRotate[0], 0.0, teapotRotate[2], 0.0,
		0.0, 1.0, 0.0, 0.0,
		teapotRotate[8], 0.0, teapotRotate[10], 0.0,
		0.0, 0.0, 0.0, 1.0 };
*/

	glRotatef(rotateY[index], 0, 1, 0);

	glColor3f(.5, .5, .5);

	//glPushMatrix();	

	// Base
	glBegin(GL_TRIANGLE_STRIP);
		glVertex3f(4.5,0, 4.5);	//1
		glVertex3f(-4.5,0, 4.5);	//2
		glVertex3f(4.5, 2, 4.5);	//3
		glVertex3f(-4.5, 2, 4.5);	//4
		glVertex3f(4.5, 2, -4.5);	//5
		glVertex3f(-4.5, 2, -4.5);	//6
		glVertex3f(4.5,0, -4.5);	//7
		glVertex3f(-4.5,0, -4.5);	//8
		glVertex3f(4.5,0, 4.5);	//9
		glVertex3f(-4.5,0, 4.5); 	//10
	glEnd();
	glBegin(GL_QUADS);
		glVertex3f(4.5, 0, 4.5);	//1
		glVertex3f(4.5, 0, -4.5); 	//2
		glVertex3f(4.5, 2, -4.5);	//3
		glVertex3f(4.5, 2, 4.5);	//4 

		glVertex3f(-4.5, 0, 4.5);	//1
		glVertex3f(-4.5, 0, -4.5);	//2
		glVertex3f(-4.5, 2, -4.5);	//3
		glVertex3f(-4.5, 2, 4.5);	//4
	glEnd();

	glColor3f(.7, .7, .7);
	glPushMatrix();
	glTranslatef(0,2,0);
	glRotatef(rotateX[index], 1, 0, 0);
	glTranslatef(0, -2, 0);
	// Lower Arm 
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

	glColor3f(.5, .7, .5);
	glPushMatrix();
	glTranslatef(0, 10, -2.5);
	glRotatef(rotateZ[index], 0, 0, 1);
	glTranslatef(0, -10, 2.5);
	// Upper Arm
	glBegin(GL_QUADS);
		// Bottom
		glVertex3f(-1.5, 9, -1.5);
		glVertex3f(-1.5, 9, -3.5);
		glVertex3f(-1.5, 11, -3.5);
		glVertex3f(-1.5, 11, -1.5);
	
		// Front
		glVertex3f(-1.5, 9, -1.5);
		glVertex3f(-1.5, 11, -1.5);
		glVertex3f(8.5, 11, -1.5);
		glVertex3f(8.5, 9, -1.5);

		// Below
		glVertex3f(-1.5, 9, -1.5);
		glVertex3f(-1.5, 9, -3.5);
		glVertex3f(8.5, 9, -3.5);
		glVertex3f(8.5, 9, -1.5);

		// Back
		glVertex3f(-1.5, 9, -3.5);
		glVertex3f(-1.5, 11, -3.5);
		glVertex3f(8.5, 11, -3.5);
		glVertex3f(8.5, 9, -3.5);

		// Above
		glVertex3f(-1.5, 11, -1.5);
		glVertex3f(-1.5, 11, -3.5);
		glVertex3f(8.5, 11, -3.5);
		glVertex3f(8.5, 11, -1.5);

		// Top
		glVertex3f(8.5, 9, -1.5);
		glVertex3f(8.5, 11, -1.5);
		glVertex3f(8.5, 11, -3.5);
		glVertex3f(8.5, 9, -3.5);
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
	glMultMatrixf(arm1Rotate);
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
	

// arm 0
	// Do transforms based on the live-variables before drawing the teapot
	glPushMatrix();
	glTranslatef(1.25,0 , 0);
	//glMultMatrixf(arm1Rotate);
	//glScalef(teapotScaleFactor, teapotScaleFactor, teapotScaleFactor);
	//glRotatef(180, 0, 1, 0);
	glScalef(.2, .2, .2);
	glRotatef(-90, 0, 0,1);
	arm(0);
	glPopMatrix();
// arm 1
/* LIANNE 2014

	glPushMatrix();
	glTranslatef(-1.25, 0, 0);
	//glMultMatrixf(arm1Rotate);
	//glScalef(teapotScaleFactor, teapotScaleFactor, teapotScaleFactor);
	glMultMatrixf(reflect);
	glScalef(.2, .2, .2);
	glRotatef(-90, 0, 0,1);
	arm(1);
	glPopMatrix();
*/
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
	case 'o':
		hand[0]-=5;
		break;
	case 'c':
		hand[0]+=5;
		break;

	/*case 'r':
		// If you modify a live variable directly, you MUST call sync_live_all() as below
		teapotScaleFactor = 0.25f;
		break;*/

	/*case 'R':
		// This is a safer way to modify values, but it requires a pointer which
		// can get messy if there are lots of widgets being adjusted this way
		scaleSpinner->set_float_val(2.0f);
		break;*/

	default:
		break;
	}

	// Because we may have changed the variables without moving GLUI's widgets, we have to tell GLUI
//	GLUI_Master.sync_live_all(); LIANNE 2014

	// Force the screen to be redrawn with new parameters.
	// If this wasn't called, you might have to wait for the user
	// to cover and then uncover the window.
	glutPostRedisplay();
}

/* LIANNE 2014 
void GLUICallbackHandler(int id) {
	switch(id) {
		case QUIT:
			exit(0);

		case PRINT_NAME:
			printf("My name is Lianne Lairmore!!\n");
			break;
		case RESET:
			//armRotate[16] = {
			//	1.0, 0.0, 0.0, 0.0,
			//	0.0, 1.0, 0.0, 0.0,
			//	0.0, 0.0, 1.0, 0.0,
			//	0.0, 0.0, 0.0, 1.0 };
			for(int i = 0; i < 16; i++){
				if(i == 0 || i == 5 || i == 10 || i == 15){
					arm1Rotate[i] = 1;
					arm2Rotate[i] = 1;
				}else{
					arm1Rotate[i] = 0;
					arm2Rotate[i] = 0;
				}
			}

			armTranslate[0] = 0;
			armTranslate[1] = 0;

			rotateX[0] = 0;
			rotateX[1] = 0;
			rotateY[0] = 0;
			rotateY[1] = 0;
			rotateZ[0] = 0;
			rotateZ[1] = 0;
			hand[0] = 0;
			hand[1] = 0;

			glutPostRedisplay();
			GLUI_Master.sync_live_all();
			break;
		default:
			break;
	}
}
*/
void cb(int i){

}

int main(int argc, char** argv) {
	glutInit(&argc, argv);
	glutInitDisplayMode( GLUT_DOUBLE | GLUT_DEPTH | GLUT_RGB);
	glutInitWindowSize(500, 500);
	glutInitWindowPosition(100, 100);
	// We need to store this in case we do something behind GLUI's back
	int GlutWindowID = glutCreateWindow("IKSwift Robot Simulator");
	
	// Call our init function
	init();

	// Register our callbacks with GLUT
	// Note that these are actually pointers to the functions declared above.
	glutDisplayFunc(display);
	// Register your keyboard function this way, instead of using GlutKeyboardFunc()
	//GLUI_Master.set_glutKeyboardFunc(keyboard);
	glutKeyboardFunc(keyboard);

/* LIANNE 2014

	// Setup GLUI
	GLUI *glui = GLUI_Master.create_glui( "GLUI Robot Arm");
	// We don't have an idle loop in this program as no animation
	GLUI_Master.set_glutIdleFunc( NULL );
	// We have to tell GLUI how to talk to our GLUT window
	glui->set_main_gfx_window( GlutWindowID );

	// FInally, we can describe the GUI
	glui->add_button( "Quit", QUIT, GLUICallbackHandler );
//	glui->add_button( "Print My Name!", PRINT_NAME, GLUICallbackHandler );
	translator = glui->add_translation( "Arm Translation XY", GLUI_TRANSLATION_XY, armTranslate);
	//glui->add_rotation( "Arm Rotation", arm1Rotate);
	translator->set_speed(0.01);
	//glui->add_translation( "Teapot Translation Z", GLUI_TRANSLATION_Z, &(teapotTranslate[2]));

	glui->add_translation("Rotate Base", GLUI_TRANSLATION_X, &(rotateY[0]));
	glui->add_translation("Pivot Upper Arm", GLUI_TRANSLATION_Y, &(rotateX[0]));
	glui->add_translation("Pivot Lower Arm", GLUI_TRANSLATION_Y, &(rotateZ[0]));

	glui->add_translation("Grasp", GLUI_TRANSLATION_Z, &(hand[0]));

	glui->add_column(false);
 
END LIANNE 2014
*/
	// Need to keep a pointer to the scale spinner so that we can adjust it's defaults
	// In this code that is done in a global variable, but if we didn't need it in keybaord()
	// we could just use a local variable like:
	//GLUI_Spinner *scaleSpinner = glui->add_spinner( "Teapot Scale", GLUI_SPINNER_FLOAT, &teapotScaleFactor);
	/*scaleSpinner = glui->add_spinner( "Teapot Scale", GLUI_SPINNER_FLOAT, &teapotScaleFactor);
	scaleSpinner->set_speed(0.01);
*/
	// Add Radio group
	/*GLUI_Panel *obj_panel = glui->add_panel("Color");
	radioButtons = glui->add_radiogroup_to_panel(obj_panel, &color,0,cb);
	glui->add_radiobutton_to_group(radioButtons, "Red");
	glui->add_radiobutton_to_group(radioButtons, "Yellow");
	glui->add_radiobutton_to_group(radioButtons, "Blue");
	*/
	// Reset color button

/* 
	glui->add_button("Reset", RESET, GLUICallbackHandler);
	glui->add_rotation( "Arm Rotation", arm1Rotate);


	glui->add_translation("Rotate Base", GLUI_TRANSLATION_X, &(rotateY[1]));
	glui->add_translation("Pivot Upper Arm", GLUI_TRANSLATION_Y, &(rotateX[1]));
	glui->add_translation("Pivot Lower Arm", GLUI_TRANSLATION_Y, &(rotateZ[1]));

	glui->add_translation("Grasp", GLUI_TRANSLATION_Z, &(hand[1]));
*/

	// Call GLUT's main loop, which never ends
	glutMainLoop();

	// Our program will never reach here
	return EXIT_SUCCESS;
}
