/// @description Insert description here
// You can write your code in this editor


if(mus_previousTrack != mus_loadedTrack)
{
	if(soundinst_currentlyPlayedSong != -1)
	{
		audio_stop_sound(soundinst_currentlyPlayedSong);	
	}
	bool_currentlyPlaying = false; 
	
}

if(!bool_currentlyPlaying && mus_loadedTrack != -1)
{
	soundinst_currentlyPlayedSong = audio_play_sound(mus_loadedTrack, 100, true)
	
	bool_currentlyPlaying = true;
	mus_previousTrack = mus_loadedTrack;
}

