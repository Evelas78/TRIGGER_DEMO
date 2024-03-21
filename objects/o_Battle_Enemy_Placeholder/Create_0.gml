/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();

struct_Sprites =
{
	sprite_Idle : bs_SkeletonSoldier_Idle,
	sprite_Hurt : bs_SkeletonSoldier_Hurt,
	sprite_MoveOne : bs_SkeletonSoldier_Action,
	sprite_MoveTwo : bs_SkeletonSoldier_Block
};

scriptArray_Moves = [[script_Rampart, HAS_ENEMY_TARGET, struct_Sprites.sprite_MoveOne, "Rampart", NO_TEAM_TARGET], [script_Brace, NO_ENEMY_TARGET, struct_Sprites.sprite_MoveTwo, "Brace", CAN_TEAM_TARGET]]

int_totalMoves = 2;