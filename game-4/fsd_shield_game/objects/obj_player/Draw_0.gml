if (obj_game_master.game_over) {
	exit;
}

if (flash) {
	shader_set(shd_white);
	draw_self();
	shader_reset();
} else {
	draw_self();
}