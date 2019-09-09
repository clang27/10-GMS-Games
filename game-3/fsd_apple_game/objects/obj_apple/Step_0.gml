if (obj_scoreboard.game_over) {
	instance_destroy();
	exit;
}

fall_speed += gravitational_constant * (delta_time / 1000000);

y += fall_speed;

if (place_meeting(x, y, obj_basket)) {
	instance_destroy();
	obj_scoreboard.game_score += score_increment;
	obj_basket.playing_catch_animation = true;
	obj_basket.catch_animation_frame = 0;
	audio_play_sound(snd_score, 10, false);
}

if (y > room_height) {
	instance_destroy();
	obj_scoreboard.player_lives -= 1;
	audio_play_sound(snd_loss, 10, false);
}