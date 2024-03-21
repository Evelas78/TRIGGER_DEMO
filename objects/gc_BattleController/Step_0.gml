 /// @description Running Battle, Processing It, Then ending it

if (intState_BattleRunningState == battleState.BattleLoading) // The battle has not started, this is grace timer phase
{
	int_HeroTimer--; 

	if(int_HeroTimer == 0)
	{
		//Trigger battle to start
		int_HeroTurn = 0
		int_EnemyTurn = 0

		//Current Turn is used to allow them to do moves, enables border flash, etc
		instArray_EnemyArray[int_EnemyTurn].bool_isCurrentTurn = true;
		instArray_TeamArray[int_HeroTurn].bool_isCurrentTurn = true;

		instArray_TeamArray[int_HeroTurn].bool_isMoveSelectPhase = true;
	
		//Sets the Enemy Timer and how fast itll tick donw
		int_EnemyTimer = instArray_EnemyArray[int_EnemyTurn].int_tTimer;
		int_EnemySpeedTick = instArray_EnemyArray[int_EnemyTurn].int_tSpeed;

		//Sets the Hero Timer and how fast itll tick down
		int_HeroTimer = instArray_TeamArray[int_HeroTurn].int_tTimer;
		int_HeroSpeedTick = instArray_TeamArray[int_HeroTurn].int_tSpeed;
		
		intState_BattleRunningState = battleState.BattlePlaying; //starts battle correctly
	}
}
else if(intState_BattleRunningState == battleState.BattlePlaying)
{
	var inst_CurrentHero = instArray_TeamArray[int_HeroTurn];
	var inst_CurrentEnemy = instArray_EnemyArray[int_EnemyTurn];
	
	//When it is the current characters turn but their currentTurn is false, then that means their turn isover
	
	//Check For Deaths
	//The plan is that when the characters die, theyll send a signal to this with its turn number, then itll be removed and replaced with a noone. 
	//Itll be put into the DeathArray in the with event. 
	//We'll also make it go to the next available hero, tho it needs to check for that
	
	//checks if hero died or turn is over

	if (!inst_CurrentHero.bool_tAlive || (int_HeroTimer == 0 && !inst_CurrentHero.bool_isCurrentTurn))
	{	
		show_debug_message("Next Hero Selecting")
		int_HeroTurn++;
		
		if(int_HeroTurn >= int_NumOfHero)
		{
			int_HeroTurn = 0;	
		}
			
		var _WhileCheck = 0;

		//Use while check to see if no one is left on this team
		//Will not activate if the current hero checked is alive
		while(instArray_TeamArray[int_HeroTurn].bool_tAlive == false)
		{	
			_WhileCheck++;
			
			int_HeroTurn++;

			if(int_HeroTurn >= int_NumOfHero)
			{
				int_HeroTurn = 0;	
			}

			
			if(_WhileCheck >= int_NumOfHero && instArray_TeamArray[int_HeroTurn].bool_tAlive == false)
			{
				intState_BattleRunningState = battleState.BattleCompleted;
				intState_BattleWinner = battleEnding.BattleLoss;
				break;
			}
		}
		
		if(intState_BattleRunningState == battleState.BattlePlaying)
		{
			//Sets important values
			instArray_TeamArray[int_HeroTurn].bool_isCurrentTurn = true;
			instArray_TeamArray[int_HeroTurn].bool_isMoveSelectPhase = true;

			int_HeroTimer = instArray_TeamArray[int_HeroTurn].int_tTimer;
			int_HeroSpeedTick = instArray_TeamArray[int_HeroTurn].int_tSpeed;
		
			inst_CurrentHero = instArray_TeamArray[int_HeroTurn];	
		}
	}
	
	//Checks if enemy died or turn is over
	if (!inst_CurrentEnemy.bool_tAlive || (int_EnemyTimer == 0 && !inst_CurrentEnemy.bool_isCurrentTurn))
	{
		//Sets enemy turn and wraps it
		int_EnemyTurn++;
		
		if(int_EnemyTurn >= int_NumOfEnemy)
		{
			int_EnemyTurn = 0;	
		}
		
		var _WhileCheck = 0;
		
		//Use while check to see if no one is left on this team
		//Will not activate if the current hero checked is alive
		while(instArray_EnemyArray[int_EnemyTurn].bool_tAlive == false)
		{
			_WhileCheck++; 
			
			int_EnemyTurn++;
		
			if(int_EnemyTurn > int_NumOfEnemy - 1)
			{

				int_EnemyTurn = 0;	
			}
			
			
			if(_WhileCheck >= int_NumOfEnemy && instArray_EnemyArray[int_EnemyTurn].bool_tAlive == false)
			{
				show_debug_message("END OF GAME")
				intState_BattleRunningState = battleState.BattleCompleted;
				intState_BattleWinner = battleEnding.BattleWin;
				break;
			}
			
		}
		
		if(intState_BattleRunningState == battleState.BattlePlaying)
		{
			//Sets important values
			instArray_EnemyArray[int_EnemyTurn].bool_isCurrentTurn = true;

			int_EnemyTimer = instArray_EnemyArray[int_EnemyTurn].int_tTimer;
			int_EnemySpeedTick = instArray_EnemyArray[int_EnemyTurn].int_tSpeed;
		
			inst_CurrentEnemy = instArray_EnemyArray[int_EnemyTurn];	
		}
	}
	
	if(int_HeroTimer > 0)
	{
		int_HeroTimer -= int_HeroSpeedTick;
	}
	else if(int_HeroTimer < 0)
	{
		int_HeroTimer = 0;
	}
	
	if(int_EnemyTimer > 0)
	{
		int_EnemyTimer -= int_EnemySpeedTick;
	}
	else 
	{
		int_EnemyTimer = 0;	
	}

}
else if(intState_BattleRunningState == battleState.BattleCompleted)//end of battle
{
	if(intState_BattleWinner == battleEnding.BattleLoss)//Enemies win
	{
		//Trigger the music controller. Play the song to a loss in a battle
		
		instance_destroy(self, true)
	}
	else if(intState_BattleWinner == battleEnding.BattleWin)//Heros win
	{
		//Trigger the music controller. Play the song to a win
		
		//Use local variable to determine when to cause endscreen
		
		//Write Win Animation Stuff here
			
		instance_destroy(self, true);	
	}
}
else if (intState_BattleRunningState == battleState.BattleFailed)
{	
	instance_destroy(self, true)
}