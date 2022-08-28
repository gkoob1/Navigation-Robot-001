// THIS CODE IS FOR THE dsPIC30F6015 MICROCONTROLLER.    
// Movement
// NAME: koob_graham
// DATE: 2011-03-18  
//***********************************************************************

//***********************************************************************
// move()
//	movement
//
//***********************************************************************

/*
void	move(unsigned int speed[], int lisy300_delta, int direction, 
			 unsigned int range[])
{
	// Obstacle in front
	move_obstacle_front();

	// Wall to right
	move_obstacle_right();

	// Wall to left
	move_obstacle_left();

	// Wall to back

		// Moving back

			// <= 15cm

				// Stop

				// Turn

		// Moving forward

			// Is it getting closer

				// Yes 

					// continue to observe

				// No

					// Don't care

	return;
}
*/

//***********************************************************************
// move_stop()
//	Stops motors
//
//***********************************************************************

// TODO
void	move_stop(void)
{
	char			x;
	//int				qei_count_old;	
	int				n;				// value for the for loop
	unsigned int	speed[3];

	// Stop motors
	speed[right] = drv_all_stop;
	speed[left] = drv_all_stop;
	rs232_motor_speed(speed);


	// write navigation data
	global_lisy300_direction = global_lisy300_direction 
							 + global_lisy300_degree_turn;

	// Delay to stop
	drive_time = 0;
	do{}
	while(drive_time <= 300);

	navigation[global_nav_log].direction = global_lisy300_direction;
	navigation[global_nav_log].degree_turn = global_lisy300_degree_turn;
	navigation[global_nav_log].distance = qei_count;
	//navigation[global_nav_log].range[0] = global_srf02_range[0];
	//navigation[global_nav_log].range[1] = global_srf02_range[1];

	/*
	for(n = 0; n < 2; n++)
	{
	   navigation[global_nav_log].range[n] = global_srf02_range[n];
//	   navigation[global_nav_log].autotune[n] = global_srf02_autotune[n];
	}
	*/

	// Set up for next log
	global_nav_log++;

	// Reset global variables
	global_lisy300_degree_turn = 0;
	qei_count = 0;

	// Set movement flag
	global_movement_old = global_movement;
	global_movement_y[global_movement_z] = global_movement;
	//global_movement_zz++;

//	global_movement_x[global_movement_z] = global_movement;
//	global_movement_z++;

	global_movement = 0;			

	global_movement_time = 1000;

	global_wall_dist[0] = global_srf02_range[0];
	global_wall_dist[1] = global_srf02_range[1];


	return;
}

//***********************************************************************
// move_forward()
//	moves robot forward
//
//***********************************************************************

void	move_forward(void)
{
	unsigned int	speed[3];

	if(global_movement == 0)
	{
		speed[left] = drv1_forward;		// Forward Left
		speed[right] = drv2_forward;	// Forward Right

		rs232_motor_speed(speed);		// Send speed to motors

		global_movement = 1;			// Set movement flag

		global_movement_x[global_movement_z] = global_movement;
		global_movement_z++;
	}

	return;
}

//***********************************************************************
// move_reverse()
//	moves robot back
//
//***********************************************************************

void	move_reverse(void)
{
	unsigned int	speed[3];

	speed[left] = drv1_reverse;		// Reverse Left
	speed[right] = drv2_reverse;	// Reverse Right

	rs232_motor_speed(speed);		// Send speed to motors

	global_movement = 2;			// Set movement flag

	global_movement_x[global_movement_z] = global_movement;
	global_movement_z++;

	return;
}

//***********************************************************************
// move_left()
//	Turns robot left
//
//***********************************************************************

void	move_left(int angle)
{
	unsigned int	speed[3];

	speed[left] = drv1_forward;		// Reverse Left
	speed[right] = drv2_reverse;	// Forward Right

	rs232_motor_speed(speed);		// Send speed to motors

	global_movement = 3;			// Set movement flag

	global_movement_x[global_movement_z] = global_movement;
	global_movement_z++;

	// Set degree for robot to stop at
	global_lisy300_degree_goal = angle * 100;

	return;
}

//***********************************************************************
// move_right()
//	Turns robot right 
//
//***********************************************************************

void	move_right(int angle)
{
	unsigned int	speed[3];

	speed[left] = drv1_reverse;			// Forward Left
	speed[right] = drv2_forward;		// Reverse Right

	rs232_motor_speed(speed);		// Send speed to motors

	global_movement = 4;			// Set movement flag

	global_movement_x[global_movement_z] = global_movement;
	global_movement_z++;

	// Set degree for robot to stop at
	global_lisy300_degree_goal = angle * 100;

	return;
}

//***********************************************************************
// move_straight()
//	moves straight
//
//***********************************************************************

// TODO
/*
void	move_straight(unsigned int speed[], int lisy300_delta, 
					  int direction)
{
	int		kc, error, bias;

	// Error correction
	error = lisy300_delta;

	rs232_motor_speed(speed);		

	return();
}
*/

//***********************************************************************
// move_obstacle_front()
//	movement if there is an obstacle in front
//
//***********************************************************************

// TODO
void	move_obstacle_front(void)
{
	// If obstacle <= 30cm
	if(global_srf02_range[srf_front] <= 50)
	{
		// STOP and log data
		move_stop();

		// Turn left 90DEG
		move_left(20);
	}

	return;
}

//***********************************************************************
// move_obstacle_right()
//	movement if there is an obstacle to right
//
//***********************************************************************

// TODO
void	move_obstacle_right(void)	
{
	// Wall to right
	//if(global_srf02_range[srf_right] < 100)
	//{
		// <= 30cm
		if(global_srf02_range[srf_right] <= 40)
		//if(global_srf02_range[srf_right] <= 30)
		{
			// Stop
			move_stop();

			// Turn left 45DEG
			move_left(20);
		}

		// >= 60cm
		else if(global_srf02_range[srf_right] >= 60)
		{
			// Stop
			move_stop();

			// Turn right 45DEG
			move_right(-20);
		}

		// ~40cm
		else
		{
			// Go forward
			//move_forward();
		}

	//}

	/*
	// No wall to right
	else
	{
		// Turn right 90DEG
	}
	*/

	return;
}

//***********************************************************************
// move_obstacle_left()
//	movement if there is an obstacle to left
//
//***********************************************************************

// TODO
/*
void	move_obstacle_left(void)	
{
		// <= 15cm

			// Is there a wall to the right

				// Yes

					// <= 30cm

						// Move right until 1/2 way between the walls 

					// > 30cm

						// Move right until left wall >= 30cm or case 1
						// is valid 

				// No 

					// Move right

	return;
}
*/

//***********************************************************************
// move_obstacle_avoidance()
//
//***********************************************************************

// TODO
void	move_obstacle_avoidance(void)
{
	switch(global_movement)
	{
		case 0:		// Stopped
		{
			move_obstacle_front();
			//move_obstacle_right();
			move_forward();
		}
		break;
		case 1:		// Moving forward
		{
			move_obstacle_front();
			move_obstacle_right();
			move_forward();
		}
		break;
		case 2:		// Moving back
		{
		}
		break;
		case 3:		// Turning left
		{
			// Stop turning when @ desired angle
			if(global_lisy300_degree_turn 
				>= global_lisy300_degree_goal)
			{
				move_stop();

				//move_forward();

				global_lisy300_degree_goal = 0;
			}
		}
		break;
		case 4:		// Turning right
		{
			// Stop turning when @ desired angle
			if(global_lisy300_degree_turn 
				<= global_lisy300_degree_goal)
			{
				move_stop();

				global_lisy300_degree_goal = 0;
			}
		}
		break;
		default:	// Error, stop until resolved
		{
			move_stop();

			// Error message
		}
	}

	return;
}

//***********************************************************************
// move_obstacle()
//
//***********************************************************************

// TODO
void	move_obstacle(void)
{
	if(!global_movement_time)
	{
		global_movement_old = global_movement;
		global_movement_y[global_movement_z] = global_movement;
	}

	switch(global_movement)
	{
		case 0:		// Stopped
		{
			if((global_srf02_range[srf_front] <= 25) 
				&& (global_srf02_range[srf_front] != 0))
			{
				// Turn left 90DEG
				move_reverse();

				drive_time = 0;
				do{}
				while(drive_time <= 2000);

				move_stop();

				move_left(20);
			}

			//move_obstacle_front();
			// If obstacle <= 30cm
			else if((global_srf02_range[srf_front] <= 50) 
					&& (global_srf02_range[srf_front] != 0))
			{
				// Turn left 90DEG
				move_left(20);
			}
			//move_obstacle_right();
			else
			{
				move_forward();
			}
		}
		break;
		case 1:		// Moving forward
		{
			if((global_srf02_range[srf_front] <= 25) 
				&& (global_srf02_range[srf_front] != 0))
			{
				// Turn left 90DEG
				move_reverse();

				drive_time = 0;
				do{}
				while(drive_time <= 2000);

				move_stop();

				move_left(20);
			}

			//move_obstacle_front();
			// If obstacle <= 30cm
			if((global_srf02_range[srf_front] <= 50)
				&& (global_srf02_range[srf_front] != 0))
			{
				// STOP and log data
				move_stop();

				// Turn left 90DEG
				move_left(20);
			}

			//move_obstacle_right();
			// <= 30cm
			else if((global_srf02_range[srf_right] <= 50)
					&& (global_srf02_range[srf_right] != 0))
			{
				// Stop
				move_stop();

				// Turn left 45DEG
				move_left(20);
			}
				
			else 
			{
				switch(global_movement_old)
				{
					case 0:		// Stopped
					{
						// >= 60cm
						if((global_srf02_range[srf_right] 
							>= global_wall_min)
							&& (global_srf02_range[srf_right] <= 250))
						{
							// Stop
							move_stop();

							// Turn right 45DEG
							move_right(-20);
						}
						else if(global_srf02_range[srf_right] > 250)
						{
							// Stop
							move_stop();

							// Turn right 45DEG
							move_right(-30);

							global_movement = 5;

							global_movement_x[global_movement_z] 
								= global_movement;

							global_movement_z++;
						}

						//global_wall_min = 200;		// TEST
					}
					break;
					case 1:		// Moving forward
					{
						// >= 60cm
						if((global_srf02_range[srf_right] >= 100)
							&& (global_srf02_range[srf_right] <= 250))
						{
							// Stop
							move_stop();

							// Turn right 45DEG
							move_right(-10);
						}

						else if
						((global_srf02_range[1] > global_srf02_range[0])
							&& (global_srf02_range[0] <= 100))
						{
							move_stop();

							move_left(20);
						}

						else if(global_srf02_range[srf_right] > 250)
						{
							// Stop
							move_stop();

							// Turn right 45DEG
							move_right(-30);

							global_movement = 5;

							global_movement_x[global_movement_z] 
								= global_movement;

							global_movement_z++;
						}

					}
					break;
					case 2:		// Moving back
					{
						// >= 60cm
						if((global_srf02_range[srf_right] 
							>= global_wall_min)
							&& (global_srf02_range[srf_right] <= 250))
						{
							// Stop
							move_stop();

							// Turn right 45DEG
							move_right(-15);
						}
						else if(global_srf02_range[srf_right] > 250)
						{
							// Stop
							move_stop();

							// Turn right 45DEG
							move_right(-30);

							global_movement = 5;

							global_movement_x[global_movement_z] 
								= global_movement;

							global_movement_z++;
						}
					}
					break;
					case 3:		// Turning left
					{
						move_forward();
					}
					break;
					case 4:		// Turning right
					{
						move_forward();
					}
					break;
					case 5:		
					{
						if(global_srf02_range[srf_right] >= 250)
						{
							// Stop
							move_stop();

							// Turn right 45DEG
							move_right(-20);
						}

						move_forward();
					}
					break;
					default:	// Error
					{
						move_stop();
					}
				}  // End of global_movement_old switch
			}

			// return wall_min to 150
			if(global_wall_min > 150)
			{
				global_wall_min = global_wall_min - 5;
			}
		}
		break;
		case 2:		// Moving back
		{
			move_stop();
		}
		break;
		case 3:		// Turning left
		{
			// Stop turning when @ desired angle
			if(global_lisy300_degree_turn 
				>= global_lisy300_degree_goal)
			{
				move_stop();

				global_lisy300_degree_goal = 0;

				global_wall_min = global_wall_min + 5;
			}
		}
		break;
		case 4:		// Turning right
		{
			// Don't let robot turn in to wall if too close
			if(global_srf02_range[1] <= 50)
			{
				move_stop();
				move_forward();
			}

			// Turn until wall is to right
			if(global_srf02_range[1] < global_wall_dist[1])
			{
				global_wall_dist[1] = global_srf02_range[1];
			}

			else if(global_srf02_range[1] > global_wall_dist[1] + 5)
			{
				move_stop();
			}

			// Wall in front and no wall to right
			else if((global_srf02_range[1] > global_srf02_range[0])
				&& (global_srf02_range[0] <= 100)
				&& (global_srf02_range[0] != 0))
			{
				move_stop();

				move_left(40);
			}

			// Stop turning when @ desired angle
			else if(global_lisy300_degree_turn 
				<= global_lisy300_degree_goal)
			{
				move_stop();

				global_lisy300_degree_goal = 0;
			}
		}
		break;
		case 5:		// after exiting from turning right around a corner
		{

			// Stop turning when @ desired angle
			if((global_lisy300_degree_goal != 0)
			&&(global_lisy300_degree_turn <= global_lisy300_degree_goal))
			{
				move_stop();
				
				move_forward();

				global_movement = 5;

				global_movement_x[global_movement_z] = global_movement;
				global_movement_z++;

				global_lisy300_degree_goal = 0;

				drive_time = 0;
			}

			//move_obstacle_front();
			// If obstacle <= 50cm
			else if((global_lisy300_degree_goal == 0)
					&& ((global_srf02_range[srf_front] <= 50)
					|| (global_srf02_range[srf_right] <= 30)))
			{
				// STOP and log data
				move_stop();

				// Turn left 90DEG
				move_left(20);
			}

			// Drive straight for 3s
			else if(drive_time >= 3000)
			{
				move_stop();
			}
		}

		break;
		default:	// Error, stop until resolved
		{
			move_stop();

			// Error message
		}
	}	// End of global_movement switch

	return;
}

//***********************************************************************
// move_obstacle_a()
//
//***********************************************************************

// TODO
void	move_obstacle_a(void)
{
	if(!global_movement_time)
	{
		global_movement_old = global_movement;
		global_movement_y[global_movement_z] = global_movement;
	}

	switch(global_movement)
	{
		case 0:		// Stopped
		{
			//move_obstacle_front();
			// If obstacle <= 30cm
			if((global_srf02_range[srf_front] <= 50) 
				&& (global_srf02_range[srf_front] != 0))
			{
				// Turn left 90DEG
				move_left(20);
			}
			//move_obstacle_right();
			move_forward();
		}
	}

	return;
}
