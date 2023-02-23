// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_check_for_player(){
	
if (instance_exists(oPlayer)) && hp >= 1{
	var dis = point_distance(x, y, oPlayer.x, oPlayer.y);
	if (dis < sight){
		state = sc_chase_state();
		targetx = oPlayer.x;
		targety = oPlayer.y;
	} else {
		alarm[1] = 10;
		sc_state_switch();	
	}
} else {
	alarm[1] = 10;
	sc_state_switch();
}

}