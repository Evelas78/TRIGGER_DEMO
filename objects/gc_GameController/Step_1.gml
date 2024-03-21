 /// @description Insert descript  

var _escPressed = false
//keyboard_check(vk_escape);
var _XPressed =  false
//keyboard_check(ord("X"));

//Update Event of the Game here 
switch(global.GameState)
{
	case gameState.PlayingOverworld:
	
		if(_escPressed)
		{
			global.GameState = gameState.PausedMenu;
		}
	
		/*
		Checks if this is the first time going to gameState.PlayingOverworld
	
		1st. Make the music/sound unpolluted
		*/
	
	break;
	case gameState.PlayingBattle:
	
		/*
			Use this to handle inputs to the battle menu  
	
			This should be held on the battle controller actually
	
			Get Normal Menu done before doing this
		*/
	
	
	break;
	case gameState.PlayingOverworldInteraction:
	
	break;
	case gameState.PausedMenu:
		if(_escPressed)
		{
			global.GameState = gameState.PausedMenu;
		}
	
		/*
		Checks if this is the first time going to gameState.PlayingOverworld
	
		1st. Make the music/sound polluted/deafened
		*/
	
	break;
	case gameState.PausedTransition:
	
		/*
			Nothing I think maybe Ill think of it later
		*/
	break;
	case gameState.PausedTitle:
		/*
			Traverse the Main Menu
		*/
	break;
}


//Handle Losing


//Handle Music

