/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 2C33813A
/// @DnDArgument : "font" "fnt_default"
/// @DnDSaveInfo : "font" "654f6e51-1316-4359-b942-e99190511fe7"
draw_set_font(fnt_default);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 1234A6A7
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1154FE67
/// @DnDArgument : "color" "$FF000000"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF000000 & $ffffff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 13D77073
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "550"
/// @DnDArgument : "caption" ""Time: ""
/// @DnDArgument : "var" "elapsed_time / 1000"
draw_text(10, 550, string("Time: ") + string(elapsed_time / 1000));

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1A4EDD9E
/// @DnDArgument : "expr" "finished"
if(finished)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 1CEA90DC
	/// @DnDParent : 1A4EDD9E
	/// @DnDArgument : "halign" "fa_center"
	/// @DnDArgument : "valign" "fa_middle"
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 60A8CE30
	/// @DnDParent : 1A4EDD9E
	/// @DnDArgument : "x" "400"
	/// @DnDArgument : "y" "350"
	/// @DnDArgument : "caption" ""Press \"R\" to Reset""
	draw_text(400, 350, string("Press \"R\" to Reset") + "");

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 40111F98
	/// @DnDParent : 1A4EDD9E
	/// @DnDArgument : "font" "fnt_big"
	/// @DnDSaveInfo : "font" "f1122588-5d34-419c-80e0-9009299b1fa7"
	draw_set_font(fnt_big);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 4563A916
	/// @DnDParent : 1A4EDD9E
	/// @DnDArgument : "x" "400"
	/// @DnDArgument : "y" "300"
	/// @DnDArgument : "caption" ""FINISH!""
	draw_text(400, 300, string("FINISH!") + "");
}