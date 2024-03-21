// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_PSwift(inst_target){
	show_debug_message("Yo")
	
	if(image_index < 6 && !(image_index > 6))
	{
		image_index += .05;	
	}
	
	
	//If animation reaches the end
	if(image_index >= image_number)
	{
		show_debug_message("Final Frame Action Move");
		sprite_index = struct_Sprites.sprite_Idle;
		x -= BATTLESPRITE_X_OFFSET;
		Speed(.5, inst_target);
		
		bool_moveAnimPlaying = false;
		int_currentMove = 1;
		int_currentTarget = 1;
	}
}

function script_PDHeal(inst_target){
	
	if(image_index < 6 && !(image_index > 6))
	{
		image_index += .05;	
	}
	
	//If animation reaches the end
	if(image_index >= image_number)
	{
		show_debug_message("Final Frame Action Move");
		sprite_index = struct_Sprites.sprite_Idle;
		x -= BATTLESPRITE_X_OFFSET;
		Heal(150, inst_target)
		
		bool_moveAnimPlaying = false;
		int_currentMove = 1;
		int_currentTarget = 1;
	}
}

function script_PTeamHeal(inst_target){
	if(image_index < 6 && !(image_index > 6))
	{
		image_index += .05;	
	}	
	
	//If animation reaches the end
	if(image_index >= image_number)
	{
		x -= BATTLESPRITE_X_OFFSET;
		sprite_index = struct_Sprites.sprite_Idle;
	    
		for(var _i  = 0; _i < global.BattleController.int_NumOfHero; _i++)
		{
			if(global.BattleController.instArray_TeamArray[_i].bool_tAlive)
			{
				Heal(50, global.BattleController.instArray_TeamArray[_i])
			}
		}
		bool_moveAnimPlaying = false;
		int_currentMove = 1;
		int_currentTarget = 1;
	}
}