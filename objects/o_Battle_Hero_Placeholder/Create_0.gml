/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();

struct_Sprites =
{
	sprite_Idle : bs_Hero_Idle,
	sprite_Hurt : bs_Hero_Hurt,
	sprite_MoveOne : bs_Hero_Blast,
	sprite_MoveTwo : bs_Hero_Freeze, 
	sprite_MoveThree : bs_Hero_Block
};

scriptArray_Moves = [[script_PBlast, HAS_ENEMY_TARGET, struct_Sprites.sprite_MoveOne, "Implosion", "High Damage : Single Target", NO_TEAM_TARGET], [script_PFreeze, HAS_ENEMY_TARGET, struct_Sprites.sprite_MoveTwo, "Blizzard", "Slow Enemy Party", CAN_TEAM_TARGET], [script_PShield, NO_ENEMY_TARGET, struct_Sprites.sprite_MoveThree, "Arcanum", "Increase Defense on Self", NO_TEAM_TARGET]]
