// Set basket position to mouse position
x = display_mouse_get_x() - window_get_x();

if (x < 0) {
	x = 0;
}

if (x >= window_get_width()) {
	x = window_get_width() - 1;
}


// Animate Basket
if (playing_catch_animation) {
	var scale = 1;
	
	if (catch_animation_frame < frame_of_reverse_animation) {
		scale = scr_interpolate(0, 1, frame_of_reverse_animation, max_scale_amount, catch_animation_frame);
	} else {
		scale = scr_interpolate(frame_of_reverse_animation, max_scale_amount, catch_animation_length, 1, catch_animation_frame);
	}
	
	catch_animation_frame++;
	
	if (catch_animation_frame > catch_animation_length) {
		scale = 1
		playing_catch_animation = false;
		catch_animation_frame = 0;
	}
	
	image_xscale = scale;
	image_yscale = scale;
}