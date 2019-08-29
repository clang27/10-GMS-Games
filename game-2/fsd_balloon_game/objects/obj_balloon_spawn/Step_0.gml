/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 02024CD3
/// @DnDArgument : "var" "time_since_last_balloon"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "time_to_trigger_balloon"
if(time_since_last_balloon < time_to_trigger_balloon)
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6071A44B
	/// @DnDParent : 02024CD3
	/// @DnDArgument : "var" "delta_modified"
	/// @DnDArgument : "value" "(delta_time * random(1)) / 1000"
	var delta_modified = (delta_time * random(1)) / 1000;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 218DE18E
	/// @DnDParent : 02024CD3
	/// @DnDArgument : "expr" "delta_modified"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "time_since_last_balloon"
	time_since_last_balloon += delta_modified;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1F1C4AF4
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 632B034E
	/// @DnDParent : 1F1C4AF4
	/// @DnDArgument : "var" "time_since_last_balloon"
	time_since_last_balloon = 0;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 13091320
	/// @DnDParent : 1F1C4AF4
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "y"
	/// @DnDArgument : "objectid" "obj_balloon"
	/// @DnDSaveInfo : "objectid" "1f333938-eba7-4b80-9535-5d2783b8a845"
	instance_create_layer(x, y, "Instances", obj_balloon);
}