/*
 * movement.h
 *
 *  Created on: May 21, 2022
 *      Author: Varun ADvani
 */

#ifndef MOVEMENT_H_
#define MOVEMENT_H_
#include "open_interface.h"

void moveForward(oi_t *sensor, double dist_mm);

void moveBackward(oi_t *sensor, double dist__mm);

void turnLeft(oi_t *sensor, double angle);

void turnRight(oi_t *sensor, double angle);


#endif /* MOVEMENT_H_ */
