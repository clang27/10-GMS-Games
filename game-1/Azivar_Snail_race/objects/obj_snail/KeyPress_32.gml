/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 359C3A21
/// @DnDArgument : "x" "8"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "0"
/// @DnDArgument : "y_relative" "1"
x += 8;
y += 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6A8DCA68
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "snail_pos_x"
snail_pos_x += 8;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 18C9B121
/// @DnDArgument : "var" "snail_pos_x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "884"
if(snail_pos_x < 884)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 306A81EE
	/// @DnDParent : 18C9B121
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "global.timer_start"
	global.timer_start = true;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 69848A1D
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 581E7C3A
	/// @DnDParent : 69848A1D
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "global.timer_start"
	global.timer_start = false;
}