/// @description Spawns apples
if (obj_scoreboard.game_over) {
	exit;
}

difficulty = power(difficulty_ramp_factor, obj_scoreboard.game_score);

launch_delay += difficulty * random(1.5) * delta_time / 1000;

if(launch_delay >= launch_threshold) {
	var launch_x = random(launch_width) + x;
	var launch_y = random(launch_height) + y;
	instance_create_layer(launch_x, launch_y, "Instances", obj_apple);
	
	if (quick_launch_probability > random(1)) {
		var quick_launch_random = (random(quick_launch_factor_randomizer * 2) - quick_launch_factor_randomizer);
		var quick_launch_threshold_modifier = quick_launch_factor + quick_launch_random;
		var quick_launch_delay = starting_launch_threshold * quick_launch_threshold_modifier;
		launch_delay = quick_launch_delay;
		
	} else {
		launch_delay = 0;
	}
}