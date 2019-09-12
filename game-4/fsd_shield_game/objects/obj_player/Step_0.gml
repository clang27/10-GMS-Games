if (obj_game_master.game_over) {
	exit;
}


var key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var key_jump = keyboard_check(vk_space);

var move_direction = key_right - key_left;

horizontal_speed += move_direction * WALK_ACCELERATION;
if (horizontal_speed * move_direction > MAX_WALK_SPEED) {
	horizontal_speed = MAX_WALK_SPEED * move_direction
}

if (move_direction == 0 and horizontal_speed != 0) {
	var abs_h_speed = horizontal_speed * sign(horizontal_speed);
	if (NATURAL_DECELERATION < abs_h_speed) {
		horizontal_speed -= sign(horizontal_speed) * NATURAL_DECELERATION;
	} else {
		horizontal_speed = 0;
	}
}

if (place_meeting(x + horizontal_speed, y, obj_wall)) {
	while (!place_meeting(x + sign(horizontal_speed), y, obj_wall)) {
		x = x + sign(horizontal_speed);
	}
	
	horizontal_speed = 0;
}

x = x + horizontal_speed;

vertical_speed = vertical_speed + GRAVITY;

if (place_meeting(x, y + 1, obj_wall) and key_jump and jump_cooldown == 0) {
	vertical_speed = JUMP_SPEED;
	jump_cooldown = JUMP_COOLDOWN_LENGTH;
}

if (place_meeting(x, y + vertical_speed, obj_wall)) {
	while (!place_meeting(x, y + sign(vertical_speed), obj_wall)) {
		y = y + sign(vertical_speed);
	}
	
	vertical_speed = 0;
}

if (place_meeting(x, y + 1, obj_wall) and jump_cooldown > 0) {
	jump_cooldown--;
}

y = y + vertical_speed;

if (move_direction == 0) {
	image_speed = 0;
} else {
	image_speed = 2;
}

var mouse_pos_x = (display_mouse_get_x() - window_get_x());
var mouse_pos_y = (display_mouse_get_y() - window_get_y());
facing_direction = point_direction(x, y, mouse_pos_x, mouse_pos_y);

if ((facing_direction >= 0 and facing_direction < 45) or (facing_direction >= 315 and facing_direction <= 360)) {
	sprite_index = spr_player_right;
}

if (facing_direction >= 45 and facing_direction < 135) {
	sprite_index = spr_player_up;
}

if (facing_direction >= 135 and facing_direction < 225) {
	sprite_index = spr_player_left;
}

if (facing_direction >= 225 and facing_direction < 315) {
	sprite_index = spr_player_down;
}

if (invincibility_counter > 0) {
	flash_frame_counter++;
	if(flash_frame_counter > FLASH_DELAY) {
		flash = !flash;
		flash_frame_counter = 0;
	}
	invincibility_counter--;
}