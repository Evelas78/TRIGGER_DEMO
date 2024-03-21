// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_PBlast(inst_target){
	show_debug_message("Yo")
	
	if(image_index < 2 && !(image_index > 2))
	{
		image_index += .01;	
	}
	
	if(image_index < 3 && !(image_index > 3))
	{
		image_index += .003;	
	}
	
	if(image_index < 4 && !(image_index > 4))
	{
		image_index += .05;	
	}
	
	
	//If animation reaches the end
	if(image_index >= image_number)
	{
		x -= BATTLESPRITE_X_OFFSET;
		sprite_index = struct_Sprites.sprite_Idle;
		Hurt(int_tDamage, inst_target);
		
		bool_moveAnimPlaying = false;
		int_currentMove = 1;
		int_currentTarget = 1;
	}
}

function script_PShield(inst_target){
	
	if(image_index < 2 && !(image_index > 2))
	{
		image_index += .05;	
	}
	if(image_index < 3 && !(image_index > 3))
	{
		image_index += .001;	
	}
	//If animation reaches the end
	if(image_index >= image_number)
	{
		show_debug_message("Final Frame Action Move");
		x -= BATTLESPRITE_X_OFFSET;
		sprite_index = struct_Sprites.sprite_Idle;
		Toughen(10, inst_target)
		
		bool_moveAnimPlaying = false;
		int_currentMove = 1;
		int_currentTarget = 1;
	}
}

function script_PFreeze(inst_target){
	if(image_index < 3 && !(image_index > 3))
	{
		image_index += .05;	
	}

	if(image_index < 4 && !(image_index > 4))
	{
		image_index += .0025;	
	}

	
	//If animation reaches the end
	if(image_index >= image_number)
	{
		show_debug_message("Final Frame Action Move");
		sprite_index = struct_Sprites.sprite_Idle;
		x -= BATTLESPRITE_X_OFFSET;	
		
		for(var _i  = 0; _i < global.BattleController.int_NumOfEnemy; _i++)
		{
			if(global.BattleController.instArray_EnemyArray[_i].bool_tAlive)
			{
			Freeze(.5, global.BattleController.instArray_EnemyArray[_i])
			}
		}
		
		bool_moveAnimPlaying = false;
		int_currentMove = 1;
		int_currentTarget = 1;
	}
}