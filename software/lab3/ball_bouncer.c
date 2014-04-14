/*
 * Userspace program that communicates with the vga_ball device driver
 * primarily through ioctls
 *
 * Richard Townsend
 * Yipeng Huang
 * Columbia University
 */

#include <stdio.h>
#include "vga_ball.h"
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <unistd.h>

int vga_ball_fd;

/* Read and print the current coordinates of the center of the circle */
void print_coordinate_info() {
  vga_ball_arg_t vla;

	if (ioctl(vga_ball_fd, VGA_BALL_READ_COORD, &vla)) {
		perror("ioctl(VGA_BALl_READ_COORD) failed");
		return;
	}
	printf("(%d, %d)", vla.x, vla.y);
  printf("\n");
}

/* Write the coordinates to the display */
void write_coordinates(unsigned short xcoord, unsigned short ycoord)
{
  vga_ball_arg_t vla;
	vla.x = xcoord;
	vla.y = ycoord;
	if (ioctl(vga_ball_fd, VGA_BALL_WRITE_COORD, &vla)) {
		perror("ioctl(VGA_BALL_WRITE_COORD) failed");
		return;
	}
}

int main()
{
  vga_ball_arg_t vla;
  int i;
  static const char filename[] = "/dev/vga_ball";

	/* Hardcoding an initial slope of -1/2 for the line describing the motion of the ball */
	int xdirection = 2;
	int ydirection = 3;

	//Start at center of screen
  short x = 240;
	short y = 320;

  printf("VGA ball Userspace program started\n");

  if ( (vga_ball_fd = open(filename, O_RDWR)) == -1) {
    fprintf(stderr, "could not open %s\n", filename);
    return -1;
  }

  printf("initial state: ");
  print_coordinate_info();

  write_coordinates(x, y);

  printf("current state: ");
  print_coordinate_info();


	/* Main ball movement section */

  for (; ;)  {
		x += xdirection;
		y += ydirection;

		//Check if we've reached the edge of the screen
		if (y + RADIUS >= 640 || y - RADIUS <= 0){
			ydirection = -ydirection;
		}
		if (x + RADIUS >= 480 || x - RADIUS <= 0){
			xdirection = -xdirection;
		}
		write_coordinates(x, y);
		usleep(10000);
  }
  
  printf("VGA ball Userspace program terminating\n");
  return 0;
}
