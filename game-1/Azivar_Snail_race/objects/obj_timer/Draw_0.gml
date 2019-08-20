/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 5AFD2056
/// @DnDArgument : "var" "vc"
/// @DnDArgument : "value" "view_camera[0]"
var vc = view_camera[0];

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 4E9CB1C6
/// @DnDArgument : "var" "cx"
/// @DnDArgument : "value" "camera_get_view_x(vc)"
var cx = camera_get_view_x(vc);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 6BBAF1DC
/// @DnDArgument : "var" "cy"
/// @DnDArgument : "value" "camera_get_view_y(vc)"
var cy = camera_get_view_y(vc);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 6B2CF30D
/// @DnDArgument : "var" "cw"
/// @DnDArgument : "value" "camera_get_view_width(vc)"
var cw = camera_get_view_width(vc);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 23EBAEBC
/// @DnDArgument : "x" "cx+(cw/2)"
/// @DnDArgument : "y" "cy+32"
/// @DnDArgument : "caption" ""Timer :  ""
/// @DnDArgument : "var" "timer/room_speed"
draw_text(cx+(cw/2), cy+32, string("Timer :  ") + string(timer/room_speed));