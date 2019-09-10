/// @description Handle Score Events

if (!game_over and player_lives <= 0) {
	game_over = true;
	audio_stop_all();
}

if (game_over and (keyboard_check_pressed(vk_anykey) or mouse_check_button_pressed(mb_any))) {
	room_restart();
	exit;
}
