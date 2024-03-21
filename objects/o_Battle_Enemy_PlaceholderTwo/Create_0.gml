/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();

struct_Sprites =
{
	sprite_Idle : bs_DarkMage_Idle,
	sprite_Hurt : bs_DarkMage_Hurt,
	sprite_MoveOne : bs_DarkMage_SpellOne,
	sprite_MoveTwo : bs_DarkMage_SpellTwo
};

scriptArray_Moves = [[script_DarkGrasp, HAS_ENEMY_TARGET, struct_Sprites.sprite_MoveOne, "Dark Grasp", NO_TEAM_TARGET], [script_DarkHeal, NO_ENEMY_TARGET, struct_Sprites.sprite_MoveTwo, "Wyrd Revival", CAN_TEAM_TARGET]]

int_totalMoves = 2;
