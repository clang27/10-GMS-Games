/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 24DE59BC
/// @DnDArgument : "expr" "started"
/// @DnDArgument : "not" "1"
if(!(started))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4D246D99
	/// @DnDParent : 24DE59BC
	/// @DnDArgument : "expr" "finished"
	/// @DnDArgument : "not" "1"
	if(!(finished))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1A9E586F
		/// @DnDParent : 4D246D99
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "started"
		started = true;
	}
}