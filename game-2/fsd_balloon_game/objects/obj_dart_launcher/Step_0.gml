/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 30AD4D05
/// @DnDArgument : "expr" "delta_time / 1000"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "shoot_delay"
shoot_delay += delta_time / 1000;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 10C49BB2
/// @DnDArgument : "expr" "keyboard_check(vk_down)"
if(keyboard_check(vk_down))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2A84E4C9
	/// @DnDParent : 10C49BB2
	/// @DnDArgument : "expr" "y < limit_bottom"
	if(y < limit_bottom)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 7EC006DA
		/// @DnDParent : 2A84E4C9
		/// @DnDArgument : "value" "move_speed"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "instvar" "1"
		y += move_speed;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 363D8764
/// @DnDArgument : "expr" "keyboard_check(vk_up)"
if(keyboard_check(vk_up))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 77C8EAC8
	/// @DnDParent : 363D8764
	/// @DnDArgument : "expr" "y > limit_top"
	if(y > limit_top)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 52C23FC7
		/// @DnDParent : 77C8EAC8
		/// @DnDArgument : "value" "-move_speed"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "instvar" "1"
		y += -move_speed;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5DAC0965
/// @DnDArgument : "expr" "keyboard_check(vk_space)"
if(keyboard_check(vk_space))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6CC4C207
	/// @DnDParent : 5DAC0965
	/// @DnDArgument : "var" "shoot_delay"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "time_between_shots"
	if(shoot_delay >= time_between_shots)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6C791866
		/// @DnDParent : 6CC4C207
		/// @DnDArgument : "var" "shoot_delay"
		shoot_delay = 0;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 40A9B522
		/// @DnDParent : 6CC4C207
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_dart"
		/// @DnDSaveInfo : "objectid" "8321b0f1-287a-4396-a88d-485d02bc6fa9"
		instance_create_layer(x, y, "Instances", obj_dart);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 1151FE39
		/// @DnDParent : 6CC4C207
		/// @DnDArgument : "soundid" "snd_shot"
		/// @DnDSaveInfo : "soundid" "29d2a7de-e22b-4fa5-9a18-5e0bb4167385"
		audio_play_sound(snd_shot, 0, 0);
	}
}