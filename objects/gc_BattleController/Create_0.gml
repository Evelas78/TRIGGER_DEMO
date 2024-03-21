 /// @description Start Battle
 
 
 /*
	int_HeroTurn  - Stores the turn of the hero
	int_HeroTimer - How long it takes for the character to keep going
	int_HeroSpeedTick - How fast the timer goes
	instArray_TeamArray - The current heroes active
	int_NumOfHero - Number of members currently active.
	int_EnemyTurn - The current turn for the enemy
	int_EnemyTimer - how long it takes for the next enemy to go
	int_EnemySpeedTick  - How fast the timer goes
	instArray_EnemyArray - The current enemies active
	int_NumOfEnemy - The number of enemies that are activve
	
	intState_BattleRunningState  - This determines teh state of the battle 
	intState_BattleWinner - Determines how the object is destroyed
	
	DeathArray - Stores dead members 
	asset_TargetRoom - The room to go to if you win
	
	int_EndTimer - Timer for how long the hero animation for victory + music shoudl paly
	
	TO MAKE:
	BackupRoom - Room to go to when you lose
	
 */
intState_BattleRunningState = battleState.BattlePreparation;
intState_BattleWinner = -1;
var int_WDistance = SPAWNING_W / 4;

bool_canSelect = false;
//Make the Hero array real objects. When the object is created, this object will fire an event which triggers the start and end turn of the object
if(int_NumOfHero == 2)
{//Equal distances
	instArray_TeamArray[0] = instance_create_depth(int_WDistance, (SPAWNING_H/4) * 1 - (SPAWNING_H/8), -100, instArray_TeamArray[0])
	instArray_TeamArray[1] = instance_create_depth(int_WDistance + BATTLE_ENTITY_W_OFFSET, (SPAWNING_H/4) * 3 - (SPAWNING_H/8), -100, instArray_TeamArray[1])
}
else
{
	for(var _i = 0; _i < int_NumOfHero; _i++)
	{
		switch(_i)
		{
			case 0:
				instArray_TeamArray[0] = instance_create_depth(int_WDistance, (SPAWNING_H/8) * 2 - (SPAWNING_H/8), 1, instArray_TeamArray[_i], {int_battleTurn : _i})
				break;
			case 1:
				instArray_TeamArray[1] = instance_create_depth(int_WDistance + BATTLE_ENTITY_W_OFFSET, (SPAWNING_H/8) * 4 - (SPAWNING_H/8), 0, instArray_TeamArray[_i], {int_battleTurn : _i})
				break;
			case 2:
				instArray_TeamArray[2] = instance_create_depth(int_WDistance, (SPAWNING_H/8) * 6 - (SPAWNING_H/8) , 2, instArray_TeamArray[_i], {int_battleTurn : _i})
				break;
			default:
				show_debug_message("int_NumOfHero is excessive (x > 3), int_NumOfHero = " + int_NumOfHero)
				intState_BattleRunningState = battleState.BattleFailed;
				break;
		}
	}
}

var int_E_H_DISTANCES = SPAWNING_H / (int_NumOfEnemy + 1);
//Gets the distances based on the number

for(var _i = 0; _i < int_NumOfEnemy; _i++)
{
	if (instArray_EnemyArray[_i] != noone)
	{
		instArray_EnemyArray[_i] = instance_create_depth(SPAWNING_W - int_WDistance + random_range(-75, 75), int_E_H_DISTANCES * (_i + .5), -_i, instArray_EnemyArray[_i], {int_battleTurn : _i})
	}
}

int_HeroTimer = 250;


if(intState_BattleRunningState != battleState.BattleFailed)
{
	intState_BattleRunningState = battleState.BattleLoading;
	
	//Start the music
	TransitionDetransitionEncounter(transitionType.TRANS_CLOSE_BLINK_FADE, 50)
	//


}
//Specific Transition Must Change intState_BattleRunningState to 2



//If there was an error, teleport to previous room once more
if(intState_BattleRunningState == battleState.BattleFailed)
{
	TransitionTrigger(transitionType.TRANS_CLOSE_BOX,asset_BackupRoom,200)
	instance_destroy(self, true)
}


