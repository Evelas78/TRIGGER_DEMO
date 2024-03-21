   /// @description Insert description here
// You can write your code in this editor

if(int_TransitionTick > 0)//Run progress on the Transition Tick
{
	int_TransitionTick--;
}

if(int_TransitionTick == 0)//Transition ended
{
	if(bool_isBattleTransition)
	{
		//Going into the battle room
		if(!bool_isLeavingBattle)
		{
			if (room_exists(asset_TargetRoom))
			{
				room_goto(asset_TargetRoom)//room end event starts
				global.GameState = gameState.PlayingBattle;
				//macro_TransitionType = transitionType.TRANS_CLOSE_FULL;

			}
			else if(bool_isOpeningNewRoom)//Cleans up every thing
			{
				bool_isBattleTransition = false;
				bool_isOpeningNewRoom = false; 
				int_OriginalTransitionTick = -1;
				int_TransitionTick = -1;
				macro_TransitionType = -1;
				bool_isBattleTransition = false
				global.bool_CanTransition = true; 
			}
		}
		else 
		{
			if (room_exists(asset_TargetRoom))
			{
				room_goto(asset_TargetRoom)//room end event starts
				//macro_TransitionType = transitionType.TRANS_CLOSE_FULL;

			}
			else if(bool_isOpeningNewRoom)//Cleans up every thing
			{
				bool_isBattleTransition = false;
				bool_isOpeningNewRoom = false; 
				bool_isLeavingBattle = false;
				int_OriginalTransitionTick = -1;
				int_TransitionTick = -1;
				macro_TransitionType = -1;
				bool_isBattleTransition = false
				global.bool_CanTransition = true; 
				
				global.GameState = gameState.PlayingOverworld;
			}
		}
	}
	else if(bool_isRegularTransition)
	{
		if (room_exists(asset_TargetRoom))
		{
			room_goto(asset_TargetRoom)//room end event starts
			asset_TargetRoom = -1;
			//doesnt need to make the screen fully black
		}
		else if(bool_isOpeningNewRoom)//Lets next room open
		{
		
			//resets all values
			bool_isOpeningNewRoom = false; 
			int_OriginalTransitionTick = -1;
			int_TransitionTick = -1;
			macro_TransitionType = -1;
			bool_isRegularTransition = false;
			
			global.GameState = gameState.PlayingOverworld;
			global.bool_CanTransition = true; 
		}
	}
	else
	{
		int_TransitionTick = -2;//close running this until the next transition begins
	}	
}

if(bool_PrimeBattle)
{
	//int_NumOfHero, int_NumOfEnemy instArray_TeamArray, instArray_EnemyArray
	//The controller sets the Opening New Room, Next Transition Type, Reset the int_OriginalTransitionTick
	global.BattleController = instance_create_depth(0,0,1000,gc_BattleController,
	{
		instArray_TeamArray : multiArray_HeldBattleArray[2],
		instArray_EnemyArray : multiArray_HeldBattleArray[3],
	
		int_NumOfEnemy : multiArray_HeldBattleArray[1],
		int_NumOfHero : multiArray_HeldBattleArray[0],
		asset_TargetRoom : multiArray_HeldBattleArray[4],
		asset_BackupRoom : asset_TargetRoom,
		int_OriginalTransitionTick : int_OriginalTransitionTick
	});
	
	asset_TargetRoom = -1;
	multiArray_HeldBattleArray = -1;
	bool_PrimeBattle = false;
}

