/// @description Initialize Variables
// Constants
starting_difficulty = 1;
difficulty_ramp_factor = 1.01;
quick_launch_probability = 0.2;
quick_launch_factor = 0.4;
quick_launch_factor_randomizer = 0.2;
starting_launch_threshold = 1000;
launch_width = 800;
launch_height = 64;
starting_x = (room_width - launch_width) / 2;
starting_y = 16;
show_debug_info = false;

// Variables
launch_threshold = starting_launch_threshold;
launch_delay = 0;
difficulty = starting_difficulty;

// Initialize
x = starting_x;
y = starting_y;