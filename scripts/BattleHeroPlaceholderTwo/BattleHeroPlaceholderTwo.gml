// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_PSlash(inst_target){
	show_debug_message("Yo")
	
	if(image_index < 1 && !(image_index > 1))
	{
		image_index += .009;	
	}
	
	if(image_index < 2 && !(image_index > 2))
	{
		image_index += .04;	
	}
	
	if(image_index < 3 && !(image_index > 3))
	{
		image_index += .1;	
	}
	
	if(image_index < 4 && !(image_index > 4))
	{
		image_index += .15;	
	}
	
	if(image_index < 5 && !(image_index > 5))
	{
		image_index += .04;	
	}


	
	//If animation reaches the end
	if(image_index >= image_number)
	{
		show_debug_message("Final Frame Action Move");
		sprite_index = struct_Sprites.sprite_Idle;
		Hurt(int_tDamage, inst_target);
		x -= BATTLESPRITE_X_OFFSET;		
		bool_moveAnimPlaying = false;
		int_currentMove = 1;
		int_currentTarget = 1;
	}
}

function script_PBlock(inst_target){
	
	if(image_index < 1 && !(image_index > 1))
	{
		image_index += .05;	
	}
	
	if(image_index < 2 && !(image_index > 2))
	{
		image_index += .05;	
	}
	
	if(image_index < 3 && !(image_index > 3))
	{
		image_index += .01;	
	}
	
	if(image_index < 4 && !(image_index > 4))
	{
		image_index += .01;	
	}
	
	if(image_index < 5 && !(image_index > 5))
	{
		image_index += .05;	
	}

	if(image_index < 6 && !(image_index > 6))
	{
		image_index += .1;	
	}

	
	//If animation reaches the end
	if(image_index >= image_number)
	{
		show_debug_message("Final Frame Action Move");
		sprite_index = struct_Sprites.sprite_Idle;
		Toughen(15, inst_target)
		x -= BATTLESPRITE_X_OFFSET;		
		bool_moveAnimPlaying = false;
		int_currentMove = 1;
		int_currentTarget = 1;
	}
}

function script_PHeal(inst_target){
	if(image_index < 1 && !(image_index > 1))
	{
		image_index += .05;	
	}
	
	if(image_index < 2 && !(image_index > 2))
	{
		image_index += .05;	
	}
	
	if(image_index < 3 && !(image_index > 3))
	{
		image_index += .01;	
	}
	
	if(image_index < 4 && !(image_index > 4))
	{
		image_index += .01;	
	}
	
	if(image_index < 5 && !(image_index > 5))
	{
		image_index += .05;	
	}

	if(image_index < 6 && !(image_index > 6))
	{
		image_index += .1;	
	}

	
	//If animation reaches the end
	if(image_index >= image_number)
	{
		show_debug_message("Final Frame Action Move");
		sprite_index = struct_Sprites.sprite_Idle;
	    Heal(80, inst_target)
		Speed(1, inst_target)
		x -= BATTLESPRITE_X_OFFSET;		
		bool_moveAnimPlaying = false;
		int_currentMove = 1;
		int_currentTarget = 1;
	}
}