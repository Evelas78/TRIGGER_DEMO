/// @description Insert description here
// You can write your code in this edito
//Set delete function here

if(bool_canCloseTextBox != true)
{
	int_CloseTextBoxTimer++;
	
	if(int_CloseTextBoxTimer >= 45)
	{
		bool_canCloseTextBox = true;	
		int_CloseTextBoxTimer = 0;
	}
}

if(global.GameState == gameState.PlayingOverworldInteraction && (keyboard_check(ord("X")) || keyboard_check(ord("x"))) && bool_canCloseTextBox)
{
	bool_canCloseTextBox = false; 
	global.GameState = gameState.PlayingOverworld
	boolean_TextBoxClosed = true;
	
	
	array_delete(SpecialArray_TextBoxStorage, 0, 1)
	int_arrayPos--;
}


if(boolean_TextBoxClosed && int_arrayPos > -1 && global.GameState == gameState.PlayingOverworld) // This means its not at it's limiter -1
{
	draw_set_font(global.Font_RegularFont)

	//Decrement Array Pos
	boolean_TextBoxClosed = false; 
	global.GameState = gameState.PlayingOverworldInteraction;
}


if(boolean_TextBoxClosed == false)
{
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_font(global.Font_RegularFont)
	draw_textBox(SpecialArray_TextBoxStorage[0]);
}

