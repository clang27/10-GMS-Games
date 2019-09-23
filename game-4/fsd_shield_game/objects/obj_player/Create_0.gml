// Constants
GRAVITY = 0.5;
MAX_WALK_SPEED = 5;
WALK_ACCELERATION = 0.7
NATURAL_DECELERATION = 1;
JUMP_SPEED = -10;
JUMP_COOLDOWN_LENGTH = 6;
INVICIBLE_LENGTH = 60 * 3;
FLASH_DELAY = 2;
SPAWN_X = room_width / 2;
SPAWN_Y = (room_height / 2) - 100;

// Variables
horizontal_speed = 0;
vertical_speed = 0;
jump_cooldown = 0;
invincibility_counter = INVICIBLE_LENGTH;
facing_direction = 0;
flash = false;
flash_frame_counter = 0;

// Initialization
x = SPAWN_X;
y = SPAWN_Y;