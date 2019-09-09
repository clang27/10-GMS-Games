/// @description Draws scoreboard
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_font(fnt_default);
var score_string = "Score: " + string(game_score);
var lives_string = "Lives: " + string(player_lives);
draw_text(gui_margin, gui_margin, score_string + "\n" + lives_string);

draw_set_halign(fa_right);
draw_text(screen_width - gui_margin, gui_margin, instruction_text);

if (game_over) {
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_text(screen_width / 2, screen_height / 2, game_over_text + string(game_score));
}