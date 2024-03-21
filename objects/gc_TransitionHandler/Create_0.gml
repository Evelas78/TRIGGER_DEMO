 /// @description Insert description here
// You can write your code in this editor

global.bool_CanTransition = false; //To refer to in transition scripts
macro_TransitionType = -1; //This changes based on what is passed to it. This determines how a transition will run. It will naturally go up one (to its opened version) when setup
int_OriginalTransitionTick = -1; //Basically Transition Tick to store the original num and actually calculate the values needed
int_TransitionTick = -2; //When anything above -1, itll run to complete a transition through the step event. When it reaches -1, it means that it's goal has been reached and either it transfers to a new room or opens up the new room thats already been went to. If it equals -1 and doesnt need to do either, itll change itself to -2 so nothing runs

asset_TargetRoom = -1; //The Room it needs to go to when OpeningNewRoom is False

//Regular Transitions
bool_isRegularTransition = false;
bool_isOpeningNewRoom = false; //In Room End, this turns true to determine if it should auto transition up

//Battle Transitions
bool_isBattleTransition = false; //If this is true, that means a battle is happening and it needs to set that up instead
bool_isLeavingBattle = false;
multiArray_HeldBattleArray = -1; //This stores all the necessary variables to open a battle
bool_PrimeBattle = false;
 