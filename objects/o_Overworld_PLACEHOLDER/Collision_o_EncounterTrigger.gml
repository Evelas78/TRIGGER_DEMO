/// @description Insert description here
// You can write your code in this editor
if(global.bool_CanTransition)
{
	with(other)
	{
		if(bool_IsSpecialEncounter)//for cutscenes
		{
			script_SpecialEncounterScript(); //This will run the encounter trigger itself.
		}
		else
		{//regular
				//int_NumOfHero, int_NumOfEnemy instArray_TeamArray, instArray_EnemyArray
			var _BattleArray = [int_NumOfHero, int_NumOfEnemy, global.instArray_TeamArray, instArray_EnemyArray, asset_TargetRoom]
			TransitionTriggerEncounter(transitionType.TRANS_OPEN_BLINK_FADE,BattleRoom,int_TransitionTick, _BattleArray)
			show_debug_message("Transition Triggered"); 
		}
	
	}
}