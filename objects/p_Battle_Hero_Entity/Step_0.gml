/// @description Insert description here
// You can write your code in this editor
if(int_SelectionTimer < int_SelectionMax && bool_canSelect == false)
{
	int_SelectionTimer++;	
		
	if(int_SelectionTimer >= int_SelectionMax)
	{
		bool_canSelect = true;
		int_SelectionTimer = 0;
	}
}

if(bool_isCurrentTurn && bool_isMoveSelectPhase)
{

	if(keyboard_check(vk_down) && int_currentMove != 3 && bool_canSelect)
	{
		show_debug_message("Moving")
	 	int_currentMove++;
		bool_canSelect = false;
	}
	
	if(keyboard_check(vk_up) && int_currentMove != 1 && bool_canSelect)
	{
		show_debug_message("Moving")
		int_currentMove--;	
		bool_canSelect = false;
	}
	
	if((keyboard_check(ord("z")) || keyboard_check(ord("Z"))) && bool_canSelect)
	{	
		show_debug_message("Targetting")
		bool_isTargetPhase = true;
		bool_isMoveSelectPhase = false;
		bool_canSelect = false;
	}
}

if(bool_isCurrentTurn && bool_isTargetPhase)
{
	//Update timer for selecting move



	//if this has a targettable move
	if(scriptArray_Moves[int_currentMove - 1][TARGETENEMY] == HAS_ENEMY_TARGET)
	{
		show_debug_message(int_currentTarget)
			
		if(scriptArray_Moves[int_currentMove -1][TARGETTEAMSLOT] == NO_TEAM_TARGET)
		{
			if(bool_firstTarget)
			{
				while(!global.BattleController.instArray_EnemyArray[int_currentTarget - 1].bool_tAlive)
				{
					int_currentTarget++;
			
					if(int_currentTarget > global.BattleController.int_NumOfEnemy)
					{
						int_currentTarget = 1;
					}
				}
		
				global.BattleController.instArray_EnemyArray[int_currentTarget -1].bool_isSelected = true;
				bool_firstTarget = false;
			}
		
			if((keyboard_check(vk_down)) && int_currentTarget != global.BattleController.int_NumOfEnemy && bool_canSelect) 
			{
				global.BattleController.instArray_EnemyArray[int_currentTarget - 1].bool_isSelected = false;
			
				int_currentTarget++;
			
				while(!global.BattleController.instArray_EnemyArray[int_currentTarget - 1].bool_tAlive)
				{
					int_currentTarget++;
					if(int_currentTarget > global.BattleController.int_NumOfEnemy)
					{
						int_currentTarget = 1;
					}
				}
			
				global.BattleController.instArray_EnemyArray[int_currentTarget -1].bool_isSelected = true;
			
				bool_canSelect = false;
			}
	
			if(keyboard_check(vk_up) && int_currentTarget != 1 && bool_canSelect)
			{
				global.BattleController.instArray_EnemyArray[int_currentTarget -1].bool_isSelected = false;
			
				int_currentTarget--;	
			
				while(!global.BattleController.instArray_EnemyArray[int_currentTarget - 1].bool_tAlive)
				{
					int_currentTarget--;
					if(int_currentTarget < 1)
					{
						int_currentTarget = global.BattleController.int_NumOfEnemy;
					}
				}
			
				global.BattleController.instArray_EnemyArray[int_currentTarget -1].bool_isSelected = true;
			
				bool_canSelect = false;
			}
		}
		else if(scriptArray_Moves[int_currentMove -1][TARGETTEAMSLOT] == CAN_TEAM_TARGET)
		{
			bool_isSelected = true;
		}
	}
	else if(scriptArray_Moves[int_currentMove - 1][TARGETENEMY] == NO_ENEMY_TARGET)
	{
		if(scriptArray_Moves[int_currentMove-1][TARGETTEAMSLOT] == CAN_TEAM_TARGET)
		{
			if(bool_firstTarget)
			{
				while(!global.BattleController.instArray_TeamArray[int_currentTarget - 1].bool_tAlive)
				{
					int_currentTarget++;
			
					if(int_currentTarget > global.BattleController.int_NumOfHero)
					{
						int_currentTarget = 1;
					}
				}
		
				global.BattleController.instArray_TeamArray[int_currentTarget -1].bool_isSelected = true;
				bool_firstTarget = false;
			}
		
			if((keyboard_check(vk_down)) && int_currentTarget != global.BattleController.int_NumOfHero && bool_canSelect) 
			{
				global.BattleController.instArray_TeamArray[int_currentTarget - 1].bool_isSelected = false;
			
				int_currentTarget++;
			
				while(!global.BattleController.instArray_TeamArray[int_currentTarget - 1].bool_tAlive)
				{
					int_currentTarget++;
					if(int_currentTarget > global.BattleController.int_NumOfHero)
					{
						int_currentTarget = 1;
					}
				}
			
				global.BattleController.instArray_TeamArray[int_currentTarget - 1].bool_isSelected = true;
			
				bool_canSelect = false;
			}
	
			if(keyboard_check(vk_up) && int_currentTarget != 1 && bool_canSelect)
			{
				global.BattleController.instArray_TeamArray[int_currentTarget - 1].bool_isSelected = false;
			
				int_currentTarget--;	
			
				while(!global.BattleController.instArray_TeamArray[int_currentTarget - 1].bool_tAlive)
				{
					int_currentTarget--;
					if(int_currentTarget < 1)
					{
						int_currentTarget = global.BattleController.int_NumOfHero;
					}
				}
			
				global.BattleController.instArray_TeamArray[int_currentTarget - 1].bool_isSelected = true;
			
				bool_canSelect = false;
			}
		}
		else if (scriptArray_Moves[int_currentMove-1][TARGETTEAMSLOT] == NO_TEAM_TARGET)
		{
			bool_isSelected = true;
		}
	}
	
	if((keyboard_check(ord("z")) || keyboard_check(ord("Z"))) && bool_canSelect)
	{	
		if(scriptArray_Moves[int_currentMove-1][TARGETENEMY] == HAS_ENEMY_TARGET)
		{
			global.BattleController.instArray_EnemyArray[int_currentTarget -1].bool_isSelected = false;
		}
		else
		{
			global.BattleController.instArray_TeamArray[int_currentTarget -1].bool_isSelected = false;
		}
		
		bool_isTargetPhase = false;
		bool_isCurrentTurn = false;
		bool_firstTarget = true;
		bool_moveAnimPlaying = true;
		bool_canSelect = false;
		bool_isSelected = false;
		
		sprite_index = scriptArray_Moves[int_currentMove-1][2]
		x += BATTLESPRITE_X_OFFSET;
		show_debug_message(int_currentTarget)
	}
	
	if((keyboard_check(ord("x")) || keyboard_check(ord("X"))) && bool_canSelect)
	{
		if(scriptArray_Moves[int_currentMove-1][TARGETENEMY] == HAS_ENEMY_TARGET)
		{
			global.BattleController.instArray_EnemyArray[int_currentTarget -1].bool_isSelected = false;
		}
		else
		{
			global.BattleController.instArray_TeamArray[int_currentTarget -1].bool_isSelected = false;
		}
		
		bool_isMoveSelectPhase = true;
		bool_firstTarget = true;
		bool_isTargetPhase = false;
		int_currentTarget = 1;
		bool_canSelect = false;
		bool_isSelected = false;
	}
}

if(bool_moveAnimPlaying)
{
	
	if(scriptArray_Moves[int_currentMove-1][TARGETENEMY] == HAS_ENEMY_TARGET)
	{
		if(scriptArray_Moves[int_currentMove-1][TARGETTEAMSLOT] == NO_TEAM_TARGET)
		{
			scriptArray_Moves[int_currentMove-1][0](global.BattleController.instArray_EnemyArray[int_currentTarget - 1])
		}
 		else
		{
			scriptArray_Moves[int_currentMove-1][0](self)
		}
	}
	else
	{
		if(scriptArray_Moves[int_currentMove-1][TARGETTEAMSLOT] == CAN_TEAM_TARGET)
		{	
			scriptArray_Moves[int_currentMove-1][0](global.BattleController.instArray_TeamArray[int_currentTarget - 1])
		}
		else
		{
			scriptArray_Moves[int_currentMove-1][0](self)
		}
			
	}
}
if(!bool_tAlive && sprite_index != struct_Sprites.sprite_Hurt)
{
	sprite_index = struct_Sprites.sprite_Hurt;
}