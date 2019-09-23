draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_text(10, 10, "Arrows Blocked: " + string(blocked_bullets));
draw_text(10, 30, "Lives: " + string(player_lives));
draw_text(10, 50, "Seconds Survived: " + string(seconds_survived));

if (game_over) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(window_get_width() / 2, window_get_height() / 2, GAME_OVER_TEXT);
}