/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();

 /// @description Insert description here
// You can write your code in this editor
if(bool_isCurrentTurn)
{

	if(int_currentMove = 1)
	{
		var _TimerBox = [tb_MenuSlant, scriptArray_Moves[0][3], false, false, false, 0, 250, 550, 150, 125]
		draw_textBoxExt(_TimerBox)
	}
	else
	{
		var _TimerBox = [tb_Menu, scriptArray_Moves[0][3], false, false, false, 25, 250, 550, 150, TEXTBOX_TEXT_X_OFFSET]
		draw_textBoxExt(_TimerBox)
	}
	
	if(int_currentMove = 2)
	{
		var _TimerBox = [tb_MenuSlant, scriptArray_Moves[1][3], false, false, false, 0, 350, 550, 150, 125]
		draw_textBoxExt(_TimerBox)
	}
	else
	{
		var _TimerBox = [tb_Menu, scriptArray_Moves[1][3], false, false, false, 25, 350, 450, 150,  TEXTBOX_TEXT_X_OFFSET]
		draw_textBoxExt(_TimerBox)
	}
	
	if(int_currentMove = 3)
	{
		var _TimerBox = [tb_MenuSlant, scriptArray_Moves[2][3], false, false, false, 0, 450, 550, 150, 125]
		draw_textBoxExt(_TimerBox)
	}
	else
	{
		var _TimerBox = [tb_Menu, scriptArray_Moves[2][3], false, false, false, 25, 450, 450, 150,  TEXTBOX_TEXT_X_OFFSET]
		draw_textBoxExt(_TimerBox)
	}	
	
	var _TimerBox = [tb_Menu, string(int_tHP), false, false, false, 25, 725, 250, 150,  TEXTBOX_TEXT_X_OFFSET]
	draw_textBoxExt(_TimerBox)
	
	var _TimerBox = [tb_Menu, scriptArray_Moves[int_currentMove - 1][4], false, false, false, 300, 700, 1000, 150, TEXTBOX_TEXT_X_OFFSET]
	draw_textBoxExt(_TimerBox)
	
}


