  /// @description Reading inputs of Keyboard (OVERWORLD ONLY)
//Remember pixels grow as they down and right
int_yTo = -keyboard_check(vk_up) + keyboard_check(vk_down);
int_xTo = keyboard_check(vk_right) - keyboard_check(vk_left);
bool_sprint = keyboard_check(vk_shift);

if((int_xTo != 0 || int_yTo != 0) && global.GameState == gameState.PlayingOverworld)
{
	scrpt_walk(int_xTo, int_yTo, bool_sprint);
}
else
{
	setAnimation(direction, s_placeholder_idle, 0, 0)
}

