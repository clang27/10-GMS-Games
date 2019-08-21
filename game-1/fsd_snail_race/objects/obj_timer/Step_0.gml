/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2A087206
/// @DnDArgument : "expr" "started"
if(started)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 30E370F9
	/// @DnDParent : 2A087206
	/// @DnDArgument : "expr" "finished"
	/// @DnDArgument : "not" "1"
	if(!(finished))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 003DCF08
		/// @DnDParent : 30E370F9
		/// @DnDArgument : "expr" "delta_time / 1000"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "elapsed_time"
		elapsed_time += delta_time / 1000;
	}
}