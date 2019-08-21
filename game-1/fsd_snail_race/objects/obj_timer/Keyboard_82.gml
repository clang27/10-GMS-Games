/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 040ACA1F
/// @DnDArgument : "expr" "finished"
if(finished)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31422A1D
	/// @DnDParent : 040ACA1F
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "finished"
	finished = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35336714
	/// @DnDParent : 040ACA1F
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "started"
	started = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 272ABF41
	/// @DnDParent : 040ACA1F
	/// @DnDArgument : "var" "elapsed_time"
	elapsed_time = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2612E3CF
	/// @DnDParent : 040ACA1F
	/// @DnDArgument : "expr" "obj_snail.start_location"
	/// @DnDArgument : "var" "obj_snail.x"
	obj_snail.x = obj_snail.start_location;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A3AD5DB
	/// @DnDParent : 040ACA1F
	/// @DnDArgument : "var" "obj_snail.step_count"
	obj_snail.step_count = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 74CF5CF7
	/// @DnDParent : 040ACA1F
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "obj_snail.moving"
	obj_snail.moving = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48E7AEF0
	/// @DnDParent : 040ACA1F
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "obj_snail.space_down"
	obj_snail.space_down = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65DABF47
	/// @DnDParent : 040ACA1F
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "obj_snail.started"
	obj_snail.started = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7AC10754
	/// @DnDParent : 040ACA1F
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "obj_snail.finished"
	obj_snail.finished = false;
}