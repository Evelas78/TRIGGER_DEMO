 // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlaceholderFight(){
 	var _BattleArray = [3, 4, [o_Battle_Hero_Placeholder, o_Battle_Hero_PlaceholderTwo, o_Battle_Hero_PlaceholderThree], [o_Battle_Enemy_Placeholder, o_Battle_Enemy_PlaceholderTwo, o_Battle_Enemy_PlaceholderThree, o_Battle_Enemy_PlaceholderTwo], DevTestVictoryRoom]
	TransitionTriggerEncounter(transitionType.TRANS_OPEN_BLINK_FADE,rm_BattleRoom,100, _BattleArray)
	show_debug_message("Placeholder Fight Started. Remember, to design special fights, you can make cutscenes beforehand"); 
}