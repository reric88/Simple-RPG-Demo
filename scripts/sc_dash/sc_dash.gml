// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_dash(){
switch face {
	case RIGHT: sprite_index = sPlayerIR;
	break;
	case UP: sprite_index = sPlayerIU;
	break;
	case LEFT: sprite_index = sPlayerIR;
	break;
	case DOWN: sprite_index = sPlayerID;
	break;
	
}
if len == 0{
	dir = face*90;	
}
len = spd*4;

// Get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
x += hspd;
y += vspd;

// Dash Sprite
if right{
sprite_index = sPlayerIR;
}

/*
// Create the dash effect
var dash = instance_create_depth(x, y, oPlayer.depth +1, ob_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;
}
*/








}
