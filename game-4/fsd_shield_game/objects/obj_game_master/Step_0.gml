if (game_over) {
	if (keyboard_check_pressed(vk_anykey) or mouse_check_button_pressed(mb_any)) {
		room_restart();
	}
	exit;
}

if (level_up) {

	if (level < 20) {
		var spawn_speed_right = SPAWNER_SPEED_MIN + random(SPAWNER_SPEED_RANDOM_FACTOR);
		var spawn_speed_left = SPAWNER_SPEED_MIN + random(SPAWNER_SPEED_RANDOM_FACTOR);
		var spawn_speed_top = SPAWNER_SPEED_MIN + random(SPAWNER_SPEED_RANDOM_FACTOR);
		var spawn_speed_bottom = SPAWNER_SPEED_MIN + random(SPAWNER_SPEED_RANDOM_FACTOR);
		
		var spawn_right = instance_create_layer(0, 0, "bullet_spawners", obj_bullet_launcher);
		with (spawn_right) {
			path_start(pth_attack_right, spawn_speed_right, path_action_reverse, true);
		}

		var spawn_left = instance_create_layer(0, 0, "bullet_spawners", obj_bullet_launcher);
		with (spawn_left) {
			path_start(pth_attack_left, spawn_speed_left, path_action_reverse, true);
		}
		
		var spawn_top = instance_create_layer(0, 0, "bullet_spawners", obj_bullet_launcher);
		with (spawn_top) {
			path_start(pth_attack_top, spawn_speed_top, path_action_reverse, true);
		}
		
		var spawn_bottom = instance_create_layer(0, 0, "bullet_spawners", obj_bullet_launcher);
		with (spawn_bottom) {
			path_start(pth_attack_bottom, spawn_speed_bottom, path_action_reverse, true);
		}
	}
	
	level_up = false;
}

level_timer += delta_time / 1000;

if (level_timer >= TIME_BETWEEN_LEVEL_INCREMENTS) {
	level_up = true;
	level++;
	level_timer = 0;
}

seconds_survived += delta_time / 1000 / 1000;

if (player_lives <= 0) {
	game_over = true;
}