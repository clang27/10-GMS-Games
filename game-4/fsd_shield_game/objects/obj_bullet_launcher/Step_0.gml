if (obj_game_master.game_over) {
	exit;
}

if (active) {
	fire_timer -= FIRE_TIMER_INCREMENT;

	if (fire_timer <= 0) {
		fire_timer = FIRE_DELAY  * random(RANDOMIZING_FACTOR) + MINIMUM_FIRE_DELAY;
	
		var target_x = obj_player.x + (random(INACCURACY_FACTOR * 2) - INACCURACY_FACTOR);
		var target_y = obj_player.y + (random(INACCURACY_FACTOR * 2) - INACCURACY_FACTOR);
		
		if(current_fire_mode == fire_mode.TARGETED) {
			target_x = obj_player.x + (random(INACCURACY_FACTOR * 2) - INACCURACY_FACTOR);
			target_y = obj_player.y + (random(INACCURACY_FACTOR * 2) - INACCURACY_FACTOR);
			
		} else {
			target_x = random(room_width);
			target_y = random(room_height);
		}
		
		var init_direction = point_direction(x, y, target_x, target_y);
	
		var bullet = instance_create_layer(x, y, "bullets", obj_bullet);
		with (bullet) {
			direction = init_direction;
		}
	}
}