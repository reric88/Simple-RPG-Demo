// Debugging
draw_text(2, 2, "FPS=" + string(fps));

if instance_exists(oPlayer){
	draw_text(2, 32, "X:" + string(oPlayer.xprevious) + " Y:" + string(oPlayer.yprevious))
}

draw_text(2, 64, "ROOM: " + string(room));

draw_text(2, 96, "PREV. ROOM: " + string(oHelper.proom));






if room = rmPause{
	if sprite_exists(screenshot){
	draw_sprite_ext(screenshot, 0, 0, 0, 1, 1, 0, c_white, .25);
	}
} else {
	if sprite_exists(screenshot){
		sprite_delete(screenshot)	
	}
}
	


/// Draw the stats

if room != rmPause{

draw_text(display_get_gui_width()-175, 16, "HP: " + string(hp) + "/" + string(maxhp));
draw_text(display_get_gui_width()-175, 32, "STA: " + string(stamina) + "/" + string(maxstamina));
draw_text(display_get_gui_width()-175, 48, "ATK: " + string(attack));
draw_text(display_get_gui_width()-175, 64, "XP: " + string(xp) + "/" + string(maxxp));
draw_text(display_get_gui_width()-175, 80, "LV: " + string(level));

}


