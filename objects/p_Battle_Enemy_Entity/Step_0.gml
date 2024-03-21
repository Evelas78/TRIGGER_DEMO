/// @description Insert description here
// You can write your code in this editor

if(bool_isCurrentTurn)
{
	int_currentMove = round(random_range(1, int_totalMoves))
	bool_isCurrentTurn = false;
	bool_moveAnimPlaying = true;
	sprite_index = scriptArray_Moves[int_currentMove - 1][2]
	x -= BATTLESPRITE_X_OFFSET;
}

if(bool_moveAnimPlaying)
{
	if(scriptArray_Moves[int_currentMove-1][TARGETENEMY] == HAS_ENEMY_TARGET)
	{
		if(scriptArray_Moves[int_currentMove-1][TARGETTEAMSLOT - 1] == NO_TEAM_TARGET)
		{
			var _determinedTarget = (floor(random_range(0, global.BattleController.int_NumOfHero - .1)))
			while(!global.BattleController.instArray_TeamArray[_determinedTarget].bool_tAlive)
			{
				_determinedTarget++;
			
				if(_determinedTarget >= global.BattleController.int_NumOfHero)
				{
					_determinedTarget = 0;
				}
			}
			
			scriptArray_Moves[int_currentMove-1][0](global.BattleController.instArray_TeamArray[_determinedTarget])
		}
		else
		{
			scriptArray_Moves[int_currentMove-1][0](self)
		}
	}
	else
	{
		if(scriptArray_Moves[int_currentMove-1][TARGETTEAMSLOT - 1] == CAN_TEAM_TARGET)
		{
			var _determinedTarget = (floor(random_range(0, global.BattleController.int_NumOfEnemy - .1)))
			while(!global.BattleController.instArray_EnemyArray[_determinedTarget].bool_tAlive)
			{
				_determinedTarget++;
			
				if(_determinedTarget >= global.BattleController.int_NumOfEnemy)
				{
					_determinedTarget = 0;
				}
			}
			
			scriptArray_Moves[int_currentMove-1][0](global.BattleController.instArray_EnemyArray[_determinedTarget])
		}
		else
		{
			scriptArray_Moves[int_currentMove-1][0](self)
		}
			
	}
}

