/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();

struct_Sprites =
{
	sprite_Idle : bs_Eros_Idle,
	sprite_Hurt : bs_Eros_Hurt,
	sprite_MoveOne : bs_Eros_Song,
	sprite_MoveTwo : bs_Eros_Song, 
	sprite_MoveThree : bs_Eros_Song
};

//Script Array Moves {0. script move, 1. if targets enemy, 2. sprites, 3. name, 4. target teammates?}
scriptArray_Moves = [[script_PSwift, NO_ENEMY_TARGET, struct_Sprites.sprite_MoveOne, "Swift Song", "Increase Speed of Single Teammate", CAN_TEAM_TARGET], [script_PDHeal, NO_ENEMY_TARGET, struct_Sprites.sprite_MoveTwo, "Heal Chord", "High Single Heal", CAN_TEAM_TARGET], [script_PTeamHeal, NO_ENEMY_TARGET, struct_Sprites.sprite_MoveThree, "Team Heal", "Low Party Heal", NO_TEAM_TARGET]]
