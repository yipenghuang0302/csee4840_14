/*
 * This program displays the robot arm position and interacts
 * with the device driver to display the intermediate positions
 * over the course of our inverse kinematics algorithm
 *
 * Richard Townsend
 * Lianne Lairmore
 * Yipeng Huang
 *
 */
#include <cstdio>
#include <GL/glut.h>
#include <iostream>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <unistd.h>
#include <math.h>
#include <time.h>
#include "CConfigLoader.h"
#include "ik_driver.h"


float rotateZ[2] = {0, 0};
full_robot robot;
int count = 0;
int ik_driver_fd;
bool start_program;

/*
 * Convert a floating point number to our fixed-point representation
 */
int float_to_fixed(float num){
	float frac = num - (int)num;
	int decimal = ((int)num) << PRECISION; //Decimal part of number
	int fraction = (1 << PRECISION) * frac;
	//Check if we need to round up 
	if (frac >= .5 && frac <= 1.0)
		fraction += 1;
	return decimal + fraction;
}

//Write the target for the end effector to the device
void write_target(float targetx, float targety, float targetz)
{
	ik_driver_arg_t vla;
	vla.joint = (char)-1;
	vla.target[0] = float_to_fixed(targetx);
	vla.target[1] = float_to_fixed(targety);
	vla.target[2] = float_to_fixed(targetz);
	if (ioctl(ik_driver_fd, IK_DRIVER_WRITE_PARAM, &vla)) {
		perror("ioctl(IK_DRIVER_WRITE_PARAM) failed");
		return;
	}
}

//Tell hardware we're ready for an iteration and wait until hardware is done
void notify_hardware(){
	ik_driver_arg_t vla;
	vla.start_signal = 1;
	vla.joint = (char)-2;//Signals that we're sending a start signal
	if (ioctl(ik_driver_fd, IK_DRIVER_WRITE_PARAM, &vla)) {
		perror("ioctl(IK_DRIVER_WRITE_PARAM) failed");
		return;
	}
	//Wait for hardware to be finished
	while (1){
		if (ioctl(ik_driver_fd, IK_DRIVER_READ_PARAM, &vla)) {
			perror("ioctl(IK_DRIVER_READ_PARAM) failed");
			return; 
		}
		if (vla.done_signal == 1){
			vla.start_signal = 0;
			vla.joint = (char)-2;
			if (ioctl(ik_driver_fd, IK_DRIVER_WRITE_PARAM, &vla)) {
				perror("ioctl(IK_DRIVER_WRITE_PARAM) failed");
				return;
			}
			return;
		}
	}
}

//Write a THETA param for a specific joint to the device, converting from degrees to radians
void write_param(int joint, float magnitude)
{
  ik_driver_arg_t vla;
	vla.joint = (char)joint;

	//Do this error checking here so we don't use floats in the kernel
	if (magnitude < -180 || magnitude > 180){
		perror("Magnitude of parameter is outside acceptable range");
		exit(1);
	}
	else{
		magnitude = magnitude * (float)M_PI / 180.0;//Convert from degrees to radians
	}
	vla.magnitude = float_to_fixed(magnitude);
	if (ioctl(ik_driver_fd, IK_DRIVER_WRITE_PARAM, &vla)) {
		perror("ioctl(IK_DRIVER_WRITE_PARAM) failed");
		return;
	}
}

//Read a theta for a specific joint from the hardware
float read_param(int joint){
	ik_driver_arg_t vla;
	float value;

	//Get param
	vla.joint = (char)joint;
	if (ioctl(ik_driver_fd, IK_DRIVER_READ_PARAM, &vla)) {
		perror("ioctl(IK_DRIVER_READ_PARAM) failed");
		return 0;
	}

	//Convert from fixed to float
	value = vla.magnitude / pow(2,PRECISION);

	//Perform wraparound if necessary
	while (value > M_PI)
		value -= 2 * M_PI;
	while (value < -M_PI)
		value += 2 * M_PI;
	
	//convert from radians to degrees
	value = value * 180 / M_PI;

	write_param(joint, value);	

	return value;
}

void arm(int index){

	float a,d,theta,alpha;

	//Draw a base for the whole arm so we can rotate our viewing of the arm
	glRotatef(rotateZ[index], 0, 0, 1);

	//Draw the target for the end effector
	glBegin(GL_LINES);
		glVertex3f(0,0,0);
		glVertex3f(robot.targetx, robot.targety, robot.targetz);
	glEnd();


	//Draw the links of the robot arm
	for (int i = 0; i < MAX_JOINT; i ++){
		glColor3f(.2*i+.5, .2*i+.1, .2*i);

		//These dh params won't change over the course of the algorithm
		d = robot.params[i].d;
		a = robot.params[i].a;
		alpha = robot.params[i].alpha;

		if (start_program){
			theta = robot.params[i].theta;
		}
		else{
			 theta = read_param(i); 
		}

		glRotatef(theta, 0, 0, 1);

		glBegin(GL_LINE_STRIP);
			glVertex3f(0, 0, 0);
			glVertex3f(a, 0, d);
		glEnd();

		glTranslatef(a, 0, d);
		glRotatef(alpha, 1, 0, 0);

	}
	glutPostRedisplay();
	if (start_program){
		start_program = false;
	}
	//Ready for next iteration
	usleep(5000);
	count++;
	notify_hardware();

	//Get new target after 80 cycles of algorithm
	if (count == 80){	
		srand(time(NULL));
		robot.targetx = rand() % 7 - 4;
		robot.targety = rand() % 7 - 4;
		robot.targetz = rand() % 7 - 4;

		//Write target to hardware
		write_target(robot.targetx, robot.targety, robot.targetz);
		count = 0;
	}
	
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

	glPushMatrix();
	glRotatef(-90, 1, 0, 0);//Now z-axis points straight up, x points to left, and y is pointing into screen
	glScalef(.9, .9, .9);

	//Draw the arm
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
	case 'z':
		rotateZ[0]+=5;
		break;
	case 'Z':
		rotateZ[0]-=5;
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

  static const char filename[] = "/dev/ik_driver";

  if ( (ik_driver_fd = open(filename, O_RDWR)) == -1) {
    fprintf(stderr, "could not open %s\n", filename);
    return -1;
  }

	//Get dh params from xml file
	std::string str = "robots/robot.xml";
	CConfigLoader cfg(str);
	if(!cfg.LoadXml()) return 1;
	robot = cfg.GetTable();

	//Write random target to hardware
	srand(time(NULL));
	robot.targetx = rand() % 8 - 4;
	robot.targety = rand() % 8 - 4;
	robot.targetz = rand() % 8 - 4;

	write_target(robot.targetx, robot.targety, robot.targetz);

	//Inform hardware of initial theta configuration
	for (int i = 0; i < MAX_JOINT; i ++){
		write_param(i, robot.params[i].theta);
	}

	start_program = true;

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
	glutKeyboardFunc(keyboard);


	// Call GLUT's main loop, which never ends
	glutMainLoop();

	// Our program will never reach here
	return EXIT_SUCCESS;
}
