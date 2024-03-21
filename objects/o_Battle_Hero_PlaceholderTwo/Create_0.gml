/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();

struct_Sprites =
{
	sprite_Idle : bs_Amber_Idle,
	sprite_Hurt : bs_Amber_Hurt,
	sprite_MoveOne : bs_Amber_Slash,
	sprite_MoveTwo : bs_Amber_BurningValor, 
	sprite_MoveThree : bs_Amber_BurningValor
};

scriptArray_Moves = [[script_PSlash, HAS_ENEMY_TARGET, struct_Sprites.sprite_MoveOne, "Axe Slam", "Medium Single Target Attack", NO_TEAM_TARGET], [script_PBlock, NO_ENEMY_TARGET, struct_Sprites.sprite_MoveTwo, "Vanguard", "Increase Defense on Any Teammate", CAN_TEAM_TARGET], [script_PHeal, NO_ENEMY_TARGET, struct_Sprites.sprite_MoveThree, "Phoenix Rise", "High Self Heal", NO_TEAM_TARGET]]
