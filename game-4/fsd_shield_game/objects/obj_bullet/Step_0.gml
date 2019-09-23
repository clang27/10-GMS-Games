if (obj_game_master.game_over) {
	exit;
}

if (!falling) {
	image_angle = direction;
	
	if (place_meeting(x, y, obj_wall)) {
		falling = true;
		audio_play_sound(snd_thud, 10, false);
	}
	
	if (place_meeting(x, y, obj_shield)) {
		falling = true;
		obj_shield.current_distance_from_player -= SHIELD_KNOCKBACK;
		obj_shield.flashing = true;
		obj_game_master.blocked_bullets++;
		audio_play_sound(snd_clink, 20, false);
	}
	
	if (obj_player.invincibility_counter <= 0 and place_meeting(x, y, obj_player_heart)) {
		instance_destroy();
		instance_create_layer(obj_player.x, obj_player.y, "bullets", obj_explosion);
		obj_player.x = obj_player.SPAWN_X;
		obj_player.y = obj_player.SPAWN_Y;
		obj_player.invincibility_counter = obj_player.INVICIBLE_LENGTH;
		obj_game_master.player_lives--;
		audio_play_sound(snd_explosion, 30, false);
	}
}

if (falling) {
	speed = 0;
	ySpeed += FALL_GRAVITY;
	image_angle += ROTATION_SPEED;
	
	y += ySpeed;
}

if (x < 0 or x > window_get_width() or y < 0 or y > window_get_height()) {
	instance_destroy();
}