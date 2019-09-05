var balloon = (sign(argument0) == 1) 
    ? instance_create_layer(-5-sprite_width, abs(argument0)+10, "balloon_layer", balloon_object)
    : instance_create_layer(room_width+sprite_width+5, abs(argument0)+10, "balloon_layer", balloon_object);



balloon.balloon_color = make_color_rgb(argument1, 0, 255-argument1);
balloon.hspeed = argument1/25 * sign(argument0) + (sign(argument0) * 2);
balloon.points_worth = abs(floor(balloon.hspeed));