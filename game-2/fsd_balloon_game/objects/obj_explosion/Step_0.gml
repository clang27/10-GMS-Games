/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 53F625DF
/// @DnDArgument : "var" "image_index"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "image_number - 1"
if(image_index > image_number - 1)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 147F89D1
	/// @DnDParent : 53F625DF
	instance_destroy();
}