/* CSCI367 - Lab 06 - ex1.cpp
 */

// Standard includes
#include <cstdio>
#include <GL/glut.h>
#include <GL/glui.h>

// GLUI IDs
// These are used by the callback function to determine what happened
// Currently, that is just for buttons with each button getting its own number
const int QUIT = 0;
const int PRINT_NAME = 1;
const int RESET = 2;

// GLUI Live-Variables (Global Variables)
// We initilize them here, but they are modified by GLUI in reaction to the user
float teapotRotate[16] = {
		1.0, 0.0, 0.0, 0.0,
		0.0, 1.0, 0.0, 0.0,
		0.0, 0.0, 1.0, 0.0,
		0.0, 0.0, 0.0, 1.0 };
float teapotTranslate[3] = {0.0, 0.0, 0.0};
float teapotScaleFactor = 1.0f;

int color = 0;

// Selected GLUI Widgets
// Keep global pointers to the ones we want to change from other parts of the code
// NOTE: There is a second way to do this deomnostrated below
GLUI_Spinner *scaleSpinner;
GLUI_Translation *translator;
GLUI_RadioGroup* radioButtons;

void display(void) {
	// Before we do anything we need to clear the screen
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	// Leave the projection matrix alone. In this function we are constructing M_{wc,vc}
	glMatrixMode(GL_MODELVIEW);

	// Start over with a new ModelView Matrix
	glLoadIdentity();

	// Perform the camera viewing transformation
	gluLookAt(0.0f, 0.0f, -10.0f,  0.0f, 0.0f, 0.0f,  0.0f, 1.0f, 0.0f);

	if(color == 0){	
		glColor3f(1.0, 0.0, 0.0);
	}else if(color == 1){
		glColor3f(1.0, 1.0, 0.0);
	}else if(color == 2){
		glColor3f(0.0, 0.0, 1.0);
	}

	// Do transforms based on the live-variables before drawing the teapot
	glTranslatef(teapotTranslate[0], teapotTranslate[1], teapotTranslate[2]);
	glMultMatrixf(teapotRotate);
	glScalef(teapotScaleFactor, teapotScaleFactor, teapotScaleFactor);
	glutSolidTeapot(2);

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
	
	case 'b':
		color = 2;
		break;

	case 'r':
		// If you modify a live variable directly, you MUST call sync_live_all() as below
		teapotScaleFactor = 0.25f;
		break;

	case 'R':
		// This is a safer way to modify values, but it requires a pointer which
		// can get messy if there are lots of widgets being adjusted this way
		scaleSpinner->set_float_val(2.0f);
		break;

	default:
		break;
	}

	// Because we may have changed the variables without moving GLUI's widgets, we have to tell GLUI
	GLUI_Master.sync_live_all();

	// Force the screen to be redrawn with new parameters.
	// If this wasn't called, you might have to wait for the user
	// to cover and then uncover the window.
	glutPostRedisplay();
}

void GLUICallbackHandler(int id) {
	switch(id) {
		case QUIT:
			exit(0);

		case PRINT_NAME:
			printf("My name is Lianne Lairmore!!\n");
			break;
		case RESET:
			color = 0;
			glutPostRedisplay();
			GLUI_Master.sync_live_all();
			break;
		default:
			break;
	}
}

void cb(int i){

}

int main(int argc, char** argv) {
	glutInit(&argc, argv);
	glutInitDisplayMode( GLUT_DOUBLE | GLUT_DEPTH | GLUT_RGB);
	glutInitWindowSize(500, 500);
	glutInitWindowPosition(100, 100);
	// We need to store this in case we do something behind GLUI's back
	int GlutWindowID = glutCreateWindow("CSCI367 Lab 06: Exercise 1");
	
	// Call our init function
	init();

	// Register our callbacks with GLUT
	// Note that these are actually pointers to the functions declared above.
	glutDisplayFunc(display);
	// Register your keyboard function this way, instead of using GlutKeyboardFunc()
	//GLUI_Master.set_glutKeyboardFunc(keyboard);
	glutKeyboardFunc(keyboard);

	// Setup GLUI
	GLUI *glui = GLUI_Master.create_glui( "GLUI Teapot");
	// We don't have an idle loop in this program as no animation
	GLUI_Master.set_glutIdleFunc( NULL );
	// We have to tell GLUI how to talk to our GLUT window
	glui->set_main_gfx_window( GlutWindowID );

	// FInally, we can describe the GUI
	glui->add_button( "Quit", QUIT, GLUICallbackHandler );
	glui->add_button( "Print My Name!", PRINT_NAME, GLUICallbackHandler );
	glui->add_rotation( "Teapot Rotation", teapotRotate);
	translator = glui->add_translation( "Teapot Translation XY", GLUI_TRANSLATION_XY, teapotTranslate);
	translator->set_speed(0.01);
	glui->add_translation( "Teapot Translation Z", GLUI_TRANSLATION_Z, &(teapotTranslate[2]));
	
	// Need to keep a pointer to the scale spinner so that we can adjust it's defaults
	// In this code that is done in a global variable, but if we didn't need it in keybaord()
	// we could just use a local variable like:
	//GLUI_Spinner *scaleSpinner = glui->add_spinner( "Teapot Scale", GLUI_SPINNER_FLOAT, &teapotScaleFactor);
	scaleSpinner = glui->add_spinner( "Teapot Scale", GLUI_SPINNER_FLOAT, &teapotScaleFactor);
	scaleSpinner->set_speed(0.01);

	// Add Radio group
	GLUI_Panel *obj_panel = glui->add_panel("Color");
	radioButtons = glui->add_radiogroup_to_panel(obj_panel, &color,0,cb);
	glui->add_radiobutton_to_group(radioButtons, "Red");
	glui->add_radiobutton_to_group(radioButtons, "Yellow");
	glui->add_radiobutton_to_group(radioButtons, "Blue");
	
	// Reset color button
	glui->add_button("Reset Color", RESET, GLUICallbackHandler);


	// Call GLUT's main loop, which never ends
	glutMainLoop();

	// Our program will never reach here
	return EXIT_SUCCESS;
}
