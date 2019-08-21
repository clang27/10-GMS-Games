/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1B5E8BB7
/// @DnDArgument : "expr" "finished"
/// @DnDArgument : "not" "1"
if(!(finished))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6E4599F7
	/// @DnDParent : 1B5E8BB7
	/// @DnDArgument : "expr" "moving"
	/// @DnDArgument : "not" "1"
	if(!(moving))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 136FA599
		/// @DnDParent : 6E4599F7
		/// @DnDArgument : "expr" "space_down"
		/// @DnDArgument : "not" "1"
		if(!(space_down))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 59029B95
			/// @DnDParent : 136FA599
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "moving"
			moving = true;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2389A50E
			/// @DnDParent : 136FA599
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "space_down"
			space_down = true;
		}
	}
}