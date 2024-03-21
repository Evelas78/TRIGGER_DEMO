   // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
  function TransitionTrigger(_transType, _targetRoom, _Tick){ 
	
	global.GameState = gameState.PausedTransition;
	global.bool_CanTransition = false;
	
	with(global.TransitionHandler)
	{
		bool_isRegularTransition = true;
		
		int_OriginalTransitionTick = _Tick
		int_TransitionTick = _Tick;
		macro_TransitionType = _transType;
		asset_TargetRoom = _targetRoom;
	}
 }
 
 function TransitionTriggerEncounter(_transType, _targetRoom, _Tick, _BattleArray)
 {  
 	global.bool_CanTransition = false;
 	global.GameState = gameState.PausedTransition;
	 
  	with(global.TransitionHandler)
	{
		bool_isBattleTransition = true;
		multiArray_HeldBattleArray = _BattleArray;
		
		int_OriginalTransitionTick = _Tick;	
		int_TransitionTick = _Tick;
		macro_TransitionType = _transType;
		asset_TargetRoom = _targetRoom;//Target room is always a battle room
	}
 }
 
function TransitionDetransitionEncounter(_targetRoom, _transType, _Tick)
 {
	global.bool_CanTransition = false;
	
    with(global.TransitionHandler)
	{
		asset_TargetRoom = _targetRoom;
		bool_isBattleTransition = true;
		bool_isLeavingBattle = true;
		int_TransitionTick = _Tick;
		macro_TransitionType = _transType;
	} 
	 
 }
 