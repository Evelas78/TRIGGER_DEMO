//Battle Sprites Top Centre

#macro MACRO_MOVEMENT 3
#macro TILESIZE 32

#macro VIEWPORT_W 1600
#macro VIEWPORT_H 900

#macro SPAWNING_W 1600
#macro SPAWNING_H 900

#macro TEXTBOX_OFFSET 0
#macro TEXTBOX_TOP_OFFSET 600
#macro TEXTBOX_TEXT_X_OFFSET 50
#macro TEXTBOX_TEXT_Y_OFFSET 50

#macro BATTLE_ENTITY_W_OFFSET 100
#macro TARGETENEMY 1
#macro HAS_ENEMY_TARGET true
#macro NO_ENEMY_TARGET false

#macro TARGETTEAMSLOT 5
#macro CAN_TEAM_TARGET true
#macro NO_TEAM_TARGET false

#macro BATTLESPRITE_X_OFFSET 100

//All enums for sprite speed will be divided by 100 
enum spriteSpeed
	{
	SPRITE_WALK = 15 
	}
	
	//make sure the next is always the opening version of it
enum transitionType
{
	TRANS_CLOSE_FULL = 0,
	TRANS_CLOSE_BOX = 1,
	TRANS_OPEN_BOX = 2,
	TRANS_CLOSE_SLOWFADE = 3,
	TRANS_OPEN_SLOWFADE = 4,
	TRANS_CLOSE_BLINK_FADE = 5,
	TRANS_OPEN_BLINK_FADE = 6
}

enum gameState
{
	PausedMenu = 0,
	PausedTitle = 1,
	PausedTransition = 2,
	PlayingBattle = 3,
	PlayingOverworld = 4,
	PlayingOverworldInteraction = 5
} 

enum battleState
{
	BattlePreparation = 0,
	BattleFailed = 1,
	BattleLoading = 2,
	BattlePlaying = 3,
	BattleCompleted = 4
}

enum battleEnding
{
	BattleLoss = 0,
	BattleWin = 1
}