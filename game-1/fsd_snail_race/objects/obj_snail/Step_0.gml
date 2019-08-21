/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5BE97F7B
/// @DnDArgument : "expr" "finished"
/// @DnDArgument : "not" "1"
if(!(finished))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 075D74EB
	/// @DnDParent : 5BE97F7B
	/// @DnDArgument : "expr" "moving"
	if(moving)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 017346EB
		/// @DnDParent : 075D74EB
		/// @DnDArgument : "var" "step_count"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "steps_to_move"
		if(step_count < steps_to_move)
		{
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 44AF08AD
			/// @DnDParent : 017346EB
			image_speed = 1;
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 59A65D41
			/// @DnDParent : 017346EB
			/// @DnDArgument : "value" "move_speed"
			/// @DnDArgument : "value_relative" "1"
			x += move_speed;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 78924F98
			/// @DnDParent : 017346EB
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "step_count"
			step_count += 1;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7E11F71C
			/// @DnDParent : 017346EB
			/// @DnDArgument : "var" "x"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "obj_finish_line.x"
			if(x >= obj_finish_line.x)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 177E3512
				/// @DnDParent : 7E11F71C
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "finished"
				finished = true;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 628C349F
				/// @DnDApplyTo : 15fcffab-56fb-40e3-a209-c15b26a84c47
				/// @DnDParent : 7E11F71C
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "finished"
				with(obj_timer) {
				finished = true;
				
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3F2D375A
		/// @DnDParent : 075D74EB
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1EBFE117
			/// @DnDParent : 3F2D375A
			/// @DnDArgument : "var" "step_count"
			step_count = 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6A0EFE75
			/// @DnDParent : 3F2D375A
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "moving"
			moving = false;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 44DEDE6D
	/// @DnDParent : 5BE97F7B
	else
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 45689B8E
		/// @DnDParent : 44DEDE6D
		/// @DnDArgument : "speed" "0"
		image_speed = 0;
	}
}