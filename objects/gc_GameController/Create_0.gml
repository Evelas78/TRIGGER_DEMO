 /// @description Setting Globals and Game Controller
// You can write your code in this editor
game_set_speed(60, gamespeed_fps);
 
global.GameState = gameState.PausedTitle; //Thsi determines the menu being ran or if characters can move/if battles are happening

//three different menus. Different Arrays stored inside for buttons that need extra buttons

/*
	Theoretically, something like:
	
	FjordanButton = [StatsButtonDraw, Move]
	HeroButton = [Stats, Move]
	KlyckButton = [Stats, Move]
	
	TeamButtonArray = [FjordanButton, HeroButton, KlyckButton]
	
	SaveAndQuit = [Yes,No]
	
	OverworldMenuOrder = [TeamButtonArray, SaveAndQuit]
	
	Each one will also have a function tied to it.
	
*/

BattleMenuOrder = [];


TitleMenuOrder = [];


OverworldMenuOrder = [];


CurrentMenuNum = [-1]; //Used for navigating menus. Add another num when you need to go back in the menus. 

InteractionProgress = -1;
InteractionMax = -1;
CurrentInteractionScript = -1; 

global.HeroPlayer = -1; //Stored for the camera controller and other uses. This is just the overworld instance of the first character in the team array (which is called object_hero
global.Follow = -1;

global.CollisionMapId = -1; //Everytime room ends, this is restored and can be used to help make sure that the player has collision in the overworld

global.PreviousRoom = -1; //Previous room stored in order to go back if need be or if needed to store something/used. Can be used for error checking, restarting the room if a lost battle, or storing progress if important to do so

global.GameController = self;
global.TransitionHandler = instance_create_depth(0, 0, 0, gc_TransitionHandler)
global.CameraController = instance_create_depth(0, 0, 0, gc_CameraController)
global.MusicHandler = instance_create_depth(0, 0, 0, gc_MusicHandler)
global.BattleController = -1; //This value will become something when a battle is started
global.TextBoxHandler = instance_create_depth(0,0,0, gc_TextBoxHandler) // Use this object to handle creating text boxes for cutscenes, interactions, and menu. (this is for visual effects)
global.CutsceneHandler = instance_create_depth(0,0,0, gc_CutsceneHandler)

//Battles
global.instArray_TeamArray = [o_Battle_Hero_Placeholder, o_Battle_Hero_Placeholder, o_Battle_Hero_Placeholder]; //Default Team Array, this one is stored and changed when you change it in the menu