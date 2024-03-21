 // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
 function setAnimation(oDirection, usedSprite, spriteSpd, spriteOffset){
	if (sprite_index != usedSprite)
	{
		sprite_index = usedSprite
		int_spriteFrame = 0 + spriteOffset;//sprite has changed, reset it.
	}

	//basically, it works by adding a number every frame to image_number so when it hits a whole number it stays there
	//explain what happened, i can prob help
	//

	int_spriteFrame += (spriteSpd/100); //all enums for spriteSpd will be divided by 100
	
	var _DirectionAddition = oDirection/360; // 0/360 = 0 and that is right, then go around

	var _DirectionMax = (_DirectionAddition * image_number) + (1/4 * image_number);//Gets the first frame, adds the whole animation minus one to get its maximum
	var _DirectionMin = (_DirectionAddition * image_number);


	if(image_speed != 0)
	{
		image_speed = 0;	
	}

	var _potentialFrame = _DirectionMin + int_spriteFrame;
	
	if(_potentialFrame >= _DirectionMax)
	{
		_potentialFrame = _DirectionMin;
	}
	

	int_spriteFrame = _potentialFrame - _DirectionMin;
	
	image_index = _potentialFrame;

}