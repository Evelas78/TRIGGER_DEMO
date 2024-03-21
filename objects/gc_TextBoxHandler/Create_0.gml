 /// @description Insert description here
// You can write your code in this editor

//-1 is natural as itll costantly be pushed to the end
SpecialArray_TextBoxStorage = [];
//Stores arrays that 0. Box Type 1. string of Text 2. Animated Text 3. Choices 1. isAnimated
boolean_TextBoxClosed = true;

bool_canCloseTextBox = false;
int_CloseTextBoxTimer = 0;

int_arrayPos = array_length(SpecialArray_TextBoxStorage) - 1;
global.Font_RegularFont = font_add_sprite(s_Font_Regular, ord("!"), true, 2)

