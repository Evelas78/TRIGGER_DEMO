/// @description Use this to transition out of the battle screen
// You can write your code in this editor
 
//make two versions, one for if there was an error (BatttleStarted = -1) and one for when battle ends normally (intState_BattleRunningState = 0)
if(intState_BattleRunningState == battleState.BattleFailed)
{
	TransitionTrigger(transitionType.TRANS_CLOSE_BOX, global.PreviousRoom, 250)
}
else
{
	if(intState_BattleWinner == battleEnding.BattleLoss)
	{
		show_debug_message("Check")
		global.isLoss = true;
		TransitionDetransitionEncounter( rm_Lose, transitionType.TRANS_CLOSE_BOX, 250)
	}
	else if(intState_BattleWinner == battleEnding.BattleWin)
	{
				show_debug_message("Check2")
		global.isLoss = false;
		TransitionDetransitionEncounter(rm_Lose, transitionType.TRANS_CLOSE_BOX, 250)
	}
}