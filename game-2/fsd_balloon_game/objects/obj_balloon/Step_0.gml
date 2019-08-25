/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 5AAF624B
/// @DnDArgument : "speed" "sway * cos((y / 100) + phase)"
/// @DnDArgument : "type" "1"
hspeed = sway * cos((y / 100) + phase);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 10AD9E3C
/// @DnDArgument : "value" "balloon_speed"
/// @DnDArgument : "instvar" "5"
vspeed = balloon_speed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 634F3AE5
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "1"
if(y < 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5CDEC162
	/// @DnDParent : 634F3AE5
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 390C4BA5
/// @DnDArgument : "expr" "place_meeting(x, y, obj_dart)"
if(place_meeting(x, y, obj_dart))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 508FF171
	/// @DnDParent : 390C4BA5
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 55D1366C
	/// @DnDParent : 390C4BA5
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "y"
	/// @DnDArgument : "objectid" "obj_explosion"
	/// @DnDSaveInfo : "objectid" "02252dd2-be43-4644-bac9-43e045aefa13"
	instance_create_layer(x, y, "Instances", obj_explosion);

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 3913AA4B
	/// @DnDParent : 390C4BA5
	/// @DnDArgument : "obj" "obj_score"
	/// @DnDSaveInfo : "obj" "f15121b8-3187-431f-86e8-79827c9c6dd6"
	var l3913AA4B_0 = false;
	l3913AA4B_0 = instance_exists(obj_score);
	if(l3913AA4B_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 782E8F26
		/// @DnDParent : 3913AA4B
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "obj_score.game_score"
		obj_score.game_score += 1;
	}
}