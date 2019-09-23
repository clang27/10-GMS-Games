// Constants
DEBUGING_MODE = false;
STARTING_LIVES = 5;
SPAWNER_SPEED_MIN = 1;
SPAWNER_SPEED_RANDOM_FACTOR = 4;
TIME_BETWEEN_LEVEL_INCREMENTS = 10000;
GAME_OVER_TEXT = "GAME OVER!\nPress any key or click mouse to restart";

// Variables
blocked_bullets = 0;
player_lives = STARTING_LIVES;
level_up = true;
level = 0;
level_timer = 0;
seconds_survived = 0;
game_over = false;