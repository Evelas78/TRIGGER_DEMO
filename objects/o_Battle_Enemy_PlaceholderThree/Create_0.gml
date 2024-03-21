/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();

struct_Sprites =
{
	sprite_Idle : bs_DarkKnight_Idle,
	sprite_Hurt : bs_DarkKnight_Hurt,
	sprite_MoveOne : bs_DarkKnight_Action,
	sprite_MoveTwo : bs_DarkKnight_Action
};
 
int_totalMoves = 1; 
scriptArray_Moves = [[script_EnemyTwoSlam, HAS_ENEMY_TARGET, struct_Sprites.sprite_MoveOne, "Dragons Visage", CAN_TEAM_TARGET]]
