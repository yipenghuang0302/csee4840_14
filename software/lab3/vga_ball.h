#ifndef _VGA_Ball_H
#define _VGA_BALL_H

#include <linux/ioctl.h>

/* Directions the ball can go */
#define HIGH_RIGHT 0
#define LOW_RIGHT 1
#define LOW_LEFT 2
#define HIGH_LEFT 3

/* Hard coded radius for right now */
#define RADIUS 10

typedef struct {
  unsigned short x, y;   /* X and Y coordinates of the center of the ball */ 
} vga_ball_arg_t;

/* ioctls and their arguments */
#define VGA_BALL_WRITE_COORD _IOW('q', 1, vga_ball_arg_t *)
#define VGA_BALL_READ_COORD  _IOR('q', 2, vga_ball_arg_t *)

#endif
