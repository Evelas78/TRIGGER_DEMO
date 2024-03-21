 /// @description Change position with player, but making sure its not too close to the borders
// You can write your code in this editor
if(global.GameState != gameState.PlayingBattle)
{
	if (global.Follow != -1 || instance_exists(global.Follow))
	{
		x = clamp(global.Follow.x, TILESIZE + int_camWidthHalf, (room_width - TILESIZE) - int_camWidthHalf);
		y = clamp(global.Follow.y, TILESIZE + int_camHeightHalf, (room_height - TILESIZE) - int_camHeightHalf);
	}
	camera_set_view_pos(camera, x - int_camWidthHalf, y - int_camHeightHalf)
}
else
{
	camera_set_view_pos(camera, 0, 0)
}