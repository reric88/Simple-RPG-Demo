// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_movement(){
if (noinput == false) {
left = keyboard_check(vk_left) or keyboard_check(ord("A")) or gamepad_button_check(0, gp_padl);
right = keyboard_check(vk_right) or keyboard_check(ord("D")) or gamepad_button_check(0, gp_padr);
up = keyboard_check(vk_up) or keyboard_check(ord("W")) or gamepad_button_check(0, gp_padu);
down = keyboard_check(vk_down) or keyboard_check(ord("S")) or gamepad_button_check(0, gp_padd);
	
attack = keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0, gp_face1);
check = keyboard_check_pressed(ord("B")) or gamepad_button_check_pressed(0, gp_face2);
items = keyboard_check_pressed(ord("I")) or gamepad_button_check_pressed(0, gp_select);
menu = keyboard_check_pressed(ord("M")) or gamepad_button_check_pressed(0, gp_start);



var xspd = 0;
var yspd = 0;
var xinput = 0;
var yinput = 0;

if (right) xinput += 1;
if (left) xinput -= 1;
if (down) yinput += 1;
if (up) yinput -= 1;

if (xinput != 0 || yinput != 0) {
    var dir = point_direction(0, 0, xinput, yinput);
    var xspd = spd * lengthdir_x(1, dir);
    var yspd = spd * lengthdir_y(1, dir);

    if (!place_meeting(x + xspd, y, oWall)) {
        x += xspd;
    }
    if (!place_meeting(x, y + yspd, oWall)) {
        y += yspd;
    }
}

}
}