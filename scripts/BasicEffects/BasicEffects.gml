// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Hurt(int_damage, inst_target){
	//Deals the stats damage
	show_debug_message(int_damage)
	
	var _effectInst = instance_create_depth(0,0,-10000, o_Effect)
	with(_effectInst)
	{
		inst_currentTarget = inst_target;
		if(int_damage > 100)
		{
			sprite_index = bs_Explosion;
		}
		else
		{
			sprite_index = bs_Slash;
		}
	}
	
	with(inst_target)
	{
		int_tHP -= int_damage * ((100 - int_tDefense)/100);
		bool_wasHit = true;
		int_FlashTick = 0;
		
		//Handle dying
		if(int_tHP <= 0)
		{
			bool_tAlive = false;
			bool_isCurrentTurn = false;
			bool_wasHit = false;
			sprite_index = struct_Sprites.sprite_Hurt;
		}
	
		
	}	
}

function Toughen(int_defense, inst_target)
{
	var _effectInst = instance_create_depth(0,0, -10000, o_Effect)
	with(_effectInst)
	{
		inst_currentTarget = inst_target;
		sprite_index = bs_Toughen;
	}
	
	with(inst_target)
	{
		int_tDefense += int_defense;
		if(int_tDefense > 50)
		{
			int_tDefense = 50;	
		}
	}	
}

function Heal(int_heal, inst_target)
{
	var _effectInst = instance_create_depth(0,0, -10000, o_Effect)
	with(_effectInst)
	{
		inst_currentTarget = inst_target;
		sprite_index = bs_Heal;
	}
	
	with(inst_target)
	{
		int_tHP += int_heal;	
		if(int_tHP > int_tMaxHP)
		{
			int_tHP = int_tMaxHP;	
		}
	}	
}

function Freeze(int_slowness, inst_target)
{
	var _effectInst = instance_create_depth(0,0, -10000, o_Effect)
	with(_effectInst)
	{
		inst_currentTarget = inst_target;
		sprite_index = bs_Slow;
	}
	
	
	with(inst_target)
	{
		int_tSpeed -= int_slowness;
		if(int_tSpeed <= 1)
		{
			int_tSpeed = 1;		
		}
	}
}

function Speed(int_speed, inst_target)
{
	var _effectInst = instance_create_depth(0,0, -10000, o_Effect)
	with(_effectInst)
	{
		inst_currentTarget = inst_target;
		sprite_index = bs_Speed;
	}
	
	
	with(inst_target)
	{
		int_tSpeed += int_speed;	
		
		if(int_tSpeed >= 8)
		{
			int_tSpeed = 8;		
		}
		
	}
}