 /// @description Insert description here
// You can write your code in this editor
with(other)
{

	if(is_undefined(input_TriggerKey))
	{
		show_debug_message("Trigger Key Direction not Set")	
	}
	else if (keyboard_check(input_TriggerKey) && global.bool_CanTransition)
	{
		TransitionTrigger(macro_TransType,asset_TargetRoom, int_TransitionTick);
	}
}