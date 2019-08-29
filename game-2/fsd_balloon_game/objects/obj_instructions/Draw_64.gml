/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 699E76FF
draw_set_colour($FFFFFFFF & $ffffff);
var l699E76FF_0=($FFFFFFFF >> 24);
draw_set_alpha(l699E76FF_0 / $ff);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 036A51B1
/// @DnDArgument : "var" "obj_score.game_score"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "20"
if(obj_score.game_score > 20)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0AE0C141
	/// @DnDParent : 036A51B1
	/// @DnDArgument : "x" "10"
	/// @DnDArgument : "y" "420"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "troll_text"
	draw_text(10, 420,  + string(troll_text));
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7967E848
else
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 3E02B0DD
	/// @DnDParent : 7967E848
	/// @DnDArgument : "x" "10"
	/// @DnDArgument : "y" "420"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "instruction_text"
	draw_text(10, 420,  + string(instruction_text));
}