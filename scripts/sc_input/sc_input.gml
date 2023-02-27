// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_input(){
if (noinput == false) {
#region buttons / keys

	left = keyboard_check(vk_left) /*or keyboard_check(ord("A"))*/ or gamepad_button_check(0, gp_padl);
	right = keyboard_check(vk_right) /*or keyboard_check(ord("D"))*/ or gamepad_button_check(0, gp_padr);
	up = keyboard_check(vk_up) /*or keyboard_check(ord("W"))*/ or gamepad_button_check(0, gp_padu);
	down = keyboard_check(vk_down) /*or keyboard_check(ord("S"))*/ or gamepad_button_check(0, gp_padd);
	
	leftrl = keyboard_check_released(vk_left) or gamepad_button_check_released(0, gp_padl);
	rightrl = keyboard_check_released(vk_right) or gamepad_button_check_released(0, gp_padr);
	uprl = keyboard_check_released(vk_up) or gamepad_button_check_released(0, gp_padu);
	downrl = keyboard_check_released(vk_down) or gamepad_button_check_released(0, gp_padd);
	
	attack = keyboard_check_pressed(ord("C")) or gamepad_button_check_pressed(0, gp_face3);
	check = keyboard_check_pressed(ord("A")) or gamepad_button_check_pressed(0, gp_face1);
	item = keyboard_check_pressed(ord("D")) or gamepad_button_check_pressed(0, gp_face4);
	menu = keyboard_check_pressed(ord("F")) or gamepad_button_check_pressed(0, gp_select);
	dash = keyboard_check_pressed(ord("S")) or gamepad_button_check_pressed(0, gp_face2);
	pause = keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0, gp_start);
	
}
#endregion	

#region PAUSE CONTROLS ----------

//if noinput == paused {
	//up = keyboard_check(vk_up) /*or keyboard_check(ord("W"))*/ or gamepad_button_check(0, gp_padu);
	//down = keyboard_check(vk_down) /*or keyboard_check(ord("S"))*/ or gamepad_button_check(0, gp_padd);
	//accept = keyboard_check_pressed(ord("C")) or gamepad_button_check_pressed(0, gp_face1);
	//back = keyboard_check_pressed(ord("A")) or gamepad_button_check_pressed(0, gp_face2);
//}

#endregion	
	
	
	
	
	
	
	
	
	

}