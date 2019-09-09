/// @description Draws a box showing the possible launch area
if (show_debug_info) {
	draw_set_color(c_red);
	draw_rectangle(x, y, x + launch_width, y + launch_height, true);
	
	draw_text(x + 8, y + 8, "Launch Delay: " + string(launch_delay));
	draw_text(x + 256, y + 8, "Difficulty: " + string(difficulty));
}
