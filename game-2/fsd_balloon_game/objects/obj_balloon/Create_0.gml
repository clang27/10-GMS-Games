/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 79C8A471
/// @DnDArgument : "expr" "random(6) - 3"
/// @DnDArgument : "var" "phase"
phase = random(6) - 3;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7610944C
/// @DnDArgument : "expr" "random(0.5) + 0.05"
/// @DnDArgument : "var" "sway"
sway = random(0.5) + 0.05;

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 0A8E11C5
/// @DnDInput : 7
/// @DnDArgument : "var" "color_value"
/// @DnDArgument : "option" "$FFFFFF"
/// @DnDArgument : "option_1" " $FF0000"
/// @DnDArgument : "option_2" "$00FF00"
/// @DnDArgument : "option_3" "$0000FF"
/// @DnDArgument : "option_4" "$FF00FF"
/// @DnDArgument : "option_5" "$00FFFF"
/// @DnDArgument : "option_6" "$FFFF00"
color_value = choose($FFFFFF,  $FF0000, $00FF00, $0000FF, $FF00FF, $00FFFF, $FFFF00);