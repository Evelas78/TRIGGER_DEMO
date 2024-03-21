// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_textBox(SpecialArray_TextBoxArray){
	draw_sprite_stretched_ext(SpecialArray_TextBoxArray[0], 0, TEXTBOX_OFFSET, TEXTBOX_TOP_OFFSET, VIEWPORT_W - TEXTBOX_OFFSET - 1, VIEWPORT_H - TEXTBOX_TOP_OFFSET, c_white, 1)
	draw_set_color(c_white)
	draw_text(TEXTBOX_OFFSET + TEXTBOX_TEXT_X_OFFSET, TEXTBOX_TOP_OFFSET + TEXTBOX_TEXT_Y_OFFSET, SpecialArray_TextBoxArray[1])
	draw_set_color(c_white)
}

function draw_textBoxExt(SpecialArray_TextBoxArrayTwo)
{

	draw_sprite_stretched_ext(SpecialArray_TextBoxArrayTwo[0], 0, SpecialArray_TextBoxArrayTwo[5], SpecialArray_TextBoxArrayTwo[6], SpecialArray_TextBoxArrayTwo[7], SpecialArray_TextBoxArrayTwo[8], c_white, 1)
	
	draw_set_color(c_white)
	draw_set_font(global.Font_RegularFont)
	draw_text(SpecialArray_TextBoxArrayTwo[5] + SpecialArray_TextBoxArrayTwo[9], SpecialArray_TextBoxArrayTwo[6] + TEXTBOX_TEXT_Y_OFFSET, SpecialArray_TextBoxArrayTwo[1])
	draw_set_color(c_white)
	image_blend = c_white
}

function add_textBox(SpecialArray_TextBoxArray)
{
	with(global.TextBoxHandler)
	{
		SpecialArray_TextBoxStorage[int_arrayPos+1] = SpecialArray_TextBoxArray;
		int_arrayPos++;
	}
} 