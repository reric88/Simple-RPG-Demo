#region CAMERA ----------
if (instance_exists(oPlayer)){
	x += (oPlayer.x - x) * .1;
	y += (oPlayer.y - y) * .1;
}

#endregion
// END CAMERA ----------

#region MUSIC ----------
if room = Room1 {
	if !audio_is_playing(msNatureGrowsAmbientSulo) {
		audio_stop_all();
		audio_play_sound(msNatureGrowsAmbientSulo, 10, 1)
	}
}	
#endregion
// END MUSIC ----------


#region PAUSE MENU ----------
sc_input();
if (pause){
	if !sprite_exists(screenshot){
	screenshot = sprite_create_from_surface(application_surface, 0, 0, view_wport, view_hport, 0, 0, 0, 0);
	}
	if (room != rmPause){
		if (instance_exists(oPlayer)){
			oPlayer.persistent = false;
		}
		proom = room;
		room_persistent = true;
		room_goto(rmPause);
	} else {
		if room == rmPause && sprite_exists(screenshot){
			sprite_delete(screenshot)
			}
		room_goto(proom);

		}
	pause = false;
}
#endregion
// END PAUSE MENU ----------