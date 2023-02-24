


#region CAMERA ----------
if (instance_exists(oPlayer)){
	x += (oPlayer.x - x) * .1;
	y += (oPlayer.y - y) * .1;
}

#endregion

#region MUSIC ----------
if room = Room1 {
	if !audio_is_playing(msNatureGrowsAmbientSulo) {
		audio_stop_all();
		audio_play_sound(msNatureGrowsAmbientSulo, 10, 1)
	}
}	
#endregion
// END MUSIC ----------