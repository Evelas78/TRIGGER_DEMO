 /// @description Insert description here
// You can write your code in this editor
//Hurt flash
var _blend = make_color_rgb(255, 255, 255)


if(bool_wasHit)
{
	if(int_FlashTick == 0 && !bool_isCurrentTurn)
	{
		sprite_index = struct_Sprites.sprite_Hurt;	
	}//set sprite once so it stays like that only once
		
	int_FlashTick++;	
	
	if(int_FlashTick == int_FlashMax)
	{
		sprite_index = struct_Sprites.sprite_Idle;
		bool_wasHit = false;	
	}
	
	
	var int_colorNum = (1/abs(sin(3*int_FlashTick))) * 255
	
	_blend = make_color_rgb(int_colorNum, int_colorNum, int_colorNum)

}

if(bool_isSelected)
{
	int_FlashTick++;	
	
	if(int_FlashTick == int_FlashMax)
	{
		int_FlashTick = 0;
	}
	
	var int_colorNum = ((1/abs(sin(3*int_FlashTick))) * 40)
	
	_blend = make_color_rgb(254, 200 - int_colorNum, 200 -int_colorNum)

}

//draw in light gray
if(bool_tAlive = false)
{
	_blend = make_color_rgb(75,75,75)
}

if(int_FlashTick >= int_FlashMax)
{
	int_FlashTick = 0;	
	
}

image_blend = _blend;

draw_self()
image_blend = c_white;
draw_set_color(c_white)

if(bool_isSelected)
{
	draw_sprite_ext(bs_Selector,0,x,y, 1, 1,0,c_white,1)
}
