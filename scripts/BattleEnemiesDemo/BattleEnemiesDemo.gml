// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_Rampart(inst_target){
	show_debug_message(inst_target)
	if(int_moveTimer < 1.05)
	{
		int_moveTimer += .05
	}

	
	//If animation reaches the end
	if(int_moveTimer >= 1)
	{
		show_debug_message("SkeletonSlash");
		sprite_index = struct_Sprites.sprite_Idle;
		Hurt(int_tDamage, inst_target);
		x += BATTLESPRITE_X_OFFSET;		
		int_moveTimer = 0;
		bool_moveAnimPlaying = false;
		int_currentMove = 1;

	}
}

function script_Brace(inst_target){

	if(int_moveTimer < 1.05)
	{
		int_moveTimer += .01
	}

	
	//If animation reaches the end
	if(int_moveTimer >= 1)
	{
		show_debug_message("SkeletonBlock");
		
		sprite_index = struct_Sprites.sprite_Idle;
		Toughen(10, inst_target);
		x += BATTLESPRITE_X_OFFSET;
		int_moveTimer = 0;
		bool_moveAnimPlaying = false;
		int_currentMove = 1;

	}
}

function script_EnemyTwoSlam(inst_target){
	show_debug_message(inst_target)
	if(int_moveTimer < 1.05)
	{
		int_moveTimer += .05
	}

	//If animation reaches the end
	if(int_moveTimer >= 1)
	{
		for(var _i  = 0; _i < global.BattleController.int_NumOfHero; _i++)
		{
			if(global.BattleController.instArray_TeamArray[_i].bool_tAlive)
			{
				Hurt(int_tDamage, global.BattleController.instArray_TeamArray[_i]);
			}
		}
		
		sprite_index = struct_Sprites.sprite_Idle;
		x += BATTLESPRITE_X_OFFSET;
		int_moveTimer = 0;
		bool_moveAnimPlaying = false;
		int_currentMove = 1;

	}
}

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_DarkGrasp(inst_target){
	show_debug_message("Yo")
	
	if(image_index < 4 && !(image_index > 4))
	{
		image_index += .05;	
	}
	
	//If animation reaches the end
	if(image_index >= image_number)
	{
		show_debug_message("Final Frame Action Move");
		sprite_index = struct_Sprites.sprite_Idle;
		Hurt(int_tDamage, inst_target);
		x += BATTLESPRITE_X_OFFSET;
		bool_moveAnimPlaying = false;
		int_currentMove = 1;
	}
}

function script_DarkHeal(inst_target){

	if(image_index < 3 && !(image_index > 3))
	{
		image_index += .05;	
	}
	
	if(image_index < 4 && !(image_index > 4))
	{
		image_index += .007;	
	}
	
	if(image_index < 5 && !(image_index > 5))
	{
		image_index += .07;	
	}

	
	//If animation reaches the end
	if(image_index >= image_number)
	{
		show_debug_message("Final Frame Action Move");
		sprite_index = struct_Sprites.sprite_Idle;
	    Heal(50, inst_target)
		Speed(1, inst_target)
		x += BATTLESPRITE_X_OFFSET;
		bool_moveAnimPlaying = false;
		int_currentMove = 1;

	}
}
