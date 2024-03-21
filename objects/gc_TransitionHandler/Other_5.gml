   /// @description Insert description here
// You can write your code in this editor
if(bool_isBattleTransition && !bool_isLeavingBattle)
{
	bool_PrimeBattle = true;
	int_TransitionTick = -1;
}
else //Regular Rooms. 
//It must first set the int_TransitionTick to mirror the original tick once again.
//Next, move up the transition Type to the next one to put into the opening transition
//Set opening new room
//
{
	macro_TransitionType += 1; //This goes to the opening transition.
	bool_isOpeningNewRoom = true;
	
	int_TransitionTick = int_OriginalTransitionTick; //Transition Tick now equlas >-1 so now it will rerun, except with the different transition and under opening a new room
}

global.PreviousRoom = asset_TargetRoom;
	asset_TargetRoom = -1;