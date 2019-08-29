/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 30D55652
draw_set_colour($FFFFFFFF & $ffffff);
var l30D55652_0=($FFFFFFFF >> 24);
draw_set_alpha(l30D55652_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 53C2B389
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "game_score"
draw_text(10, 10, string("Score: ") + string(game_score));