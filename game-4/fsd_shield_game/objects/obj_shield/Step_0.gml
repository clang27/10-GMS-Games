var mouse_pos_x = (display_mouse_get_x() - window_get_x());
var mouse_pos_y = (display_mouse_get_y() - window_get_y());

var dir_angle = point_direction(obj_player.x, obj_player.y, mouse_pos_x, mouse_pos_y);

x = obj_player.x + (current_distance_from_player * dcos(dir_angle));
y = obj_player.y - (current_distance_from_player * dsin(dir_angle));

image_angle = dir_angle;
direction = dir_angle;

if (current_distance_from_player < DISTANCE_FROM_PLAYER) {
	if (DISTANCE_FROM_PLAYER - current_distance_from_player < SHIELD_RETURN_SPEED) {
		current_distance_from_player = DISTANCE_FROM_PLAYER
	} else {
		current_distance_from_player += SHIELD_RETURN_SPEED;
	}
}

if (flashing) {
	flash_timer++;
	
	if (flash_timer > FLASH_TIME) {
		flashing = false;
		flash_timer = 0;
	}
}