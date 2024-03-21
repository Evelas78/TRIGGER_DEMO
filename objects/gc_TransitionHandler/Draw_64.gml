 /// @description Drawing the Transition
 
if(macro_TransitionType == transitionType.TRANS_CLOSE_BOX)
{
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_rectangle(0, 0, VIEWPORT_W, VIEWPORT_H * (1 - int_TransitionTick/int_OriginalTransitionTick), false)
}
else if(macro_TransitionType == transitionType.TRANS_OPEN_BOX)
{	
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_rectangle(0, 0, VIEWPORT_W, VIEWPORT_H * (int_TransitionTick/int_OriginalTransitionTick), false)
}

else if(macro_TransitionType == transitionType.TRANS_OPEN_BLINK_FADE)
{
	draw_set_alpha(1 * sin(int_TransitionTick * 1.5 * pi / 10) + .5)
	if(int_TransitionTick == int_OriginalTransitionTick)
	{
		draw_set_alpha(1)
	}
	
	draw_set_color(c_black);
	draw_rectangle(0, 0, VIEWPORT_W, VIEWPORT_H, false)
	draw_set_alpha(1)
}
else if(macro_TransitionType == transitionType.TRANS_CLOSE_BLINK_FADE)
{	
	draw_set_alpha(1 * sin(int_TransitionTick * 2 * pi / 10) + .5)
	if(int_TransitionTick == int_OriginalTransitionTick)
	{
		draw_set_alpha(1)
	}
	
	draw_set_color(c_black);
	draw_rectangle(0, 0, VIEWPORT_W, VIEWPORT_H, false)
	draw_set_alpha(1)
}
else if(macro_TransitionType == transitionType.TRANS_CLOSE_FULL)
{
	draw_set_alpha(1)
	draw_set_color(c_black)
	draw_rectangle(0,0, VIEWPORT_W, VIEWPORT_H, false)
}


 



