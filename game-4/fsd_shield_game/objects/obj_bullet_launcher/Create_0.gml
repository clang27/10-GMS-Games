// Constants
FIRE_DELAY = 200;
MINIMUM_FIRE_DELAY = 80;
FIRE_TIMER_INCREMENT = 1;
RANDOMIZING_FACTOR = 2;
INACCURACY_FACTOR = 10;

enum fire_mode {
	TARGETED,
	RANDOM
}

// Variables
fire_timer = 0;
active = true;
current_fire_mode = choose(fire_mode.RANDOM, fire_mode.TARGETED);