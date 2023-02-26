
// INPUT SCRIPT ----------
sc_input();
// END INPUT SCRIPT ----------

depth = -y;

#region BUTTON FUNCTIONS
#region ATTACK ----------
// ATTACK ----------
if (attack == 1) {state = "attack"; image_index = 0; noinput = true; attack = 0;
	audio_play_sound(snSword, 1, 0);
		if lpos == "left" {instance_create_layer(oPlayer.x - 11, oPlayer.y - 11, "Instances", dSword); dSword.image_xscale = -1;}
		if lpos == "right" {instance_create_layer(oPlayer.x + 11, oPlayer.y - 11, "Instances", dSword)}
		if lpos == "up"  {instance_create_layer(oPlayer.x, oPlayer.y - 24, "Instances", dSword); dSword.image_angle += 90;}
		if lpos == "down" {instance_create_layer(oPlayer.x, oPlayer.y - 5, "Instances", dSword); dSword.image_angle -= 90;}
			
		
	}
#endregion
// END ATTACK ----------


#region DASHING ----------
// IDLE DASHING ----------
	if (dash == 1 && xspd == 0 && yspd == 0) {state = "dash"; 
		audio_play_sound(snMenuClose, 1, 0);
		image_index = 0; 
		noinput = true; 
		dash = 0;	
			if (lpos == "right") { face = "right"; Smoothing.x = oPlayer.x - 50; Smoothing.y = oPlayer.y}
		    if (lpos == "left") { face = "left"; Smoothing.x = oPlayer.x + 50; Smoothing.y = oPlayer.y}
		    if (lpos == "up") { face = "up"; Smoothing.y = oPlayer.y + 50; Smoothing.x = oPlayer.x}
		    if (lpos == "down") { face = "down"; Smoothing.y = oPlayer.y - 50; Smoothing.x = oPlayer.x }
	}

	if (state == "dash") {
		if (face == "left" || face == "right" || face == "up" || face == "down") {
			var dire = point_direction(x, y, Smoothing.x, Smoothing.y);
			var dspd = 5; // adjust as needed
			x += lengthdir_x(dspd, dire);
			y += lengthdir_y(dspd, dire);
				if place_meeting(x, y, Smoothing) {
					face = "none";
				}
					 alarm_set(1, 10);
		}
	}
	
// MOVING DASHING ----------


//THIS NEEDS MORE WORK, ALL ANGLES EXCEPT LEFTUP WORK AS INTENDED
if (dash == 1 && xspd != 0 || dash == 1 && yspd != 0) {state = "dash"; 
		audio_play_sound(snMenuClose, 1, 0);
		image_index = 0; 
		noinput = true; 
		dash = 0;	
			if (lpos == "right")     {face = "right"     ;Smoothing.x = oPlayer.x + 50; Smoothing.y = oPlayer.y}
		    if (lpos == "left")      {face = "left"      ;Smoothing.x = oPlayer.x - 50; Smoothing.y = oPlayer.y}
		    if (lpos == "up")        {face = "up"        ;Smoothing.y = oPlayer.y - 50; Smoothing.x = oPlayer.x}
		    if (lpos == "down")      {face = "down"      ;Smoothing.y = oPlayer.y + 50; Smoothing.x = oPlayer.x }	
			if (lpos == "rightup")   {face = "rightup"   ;Smoothing.x = oPlayer.x + 40; Smoothing.y = oPlayer.y - 40}
		    if (lpos == "leftup")    {face = "leftup"    ;Smoothing.x = oPlayer.x - 40; Smoothing.y = oPlayer.y - 40}
		    if (lpos == "rightdown") {face = "rightdown" ;Smoothing.y = oPlayer.y + 40; Smoothing.x = oPlayer.x + 40}
		    if (lpos == "leftdown")  {face = "leftdown"  ;Smoothing.y = oPlayer.y + 40; Smoothing.x = oPlayer.x - 40}
	}
var diag = (face == "left" || face == "right" || face == "up" || face == "down" || 
			face == "leftup" || face == "rightup" || face == "leftdown" || face == "rightdown");
if (xspd != 0 || yspd != 0) {
	if (state == "dash") {
		if diag {
			var dire = point_direction(x, y, Smoothing.x, Smoothing.y);
			var dspd = 4; // adjust as needed
			x += lengthdir_x(dspd, dire);
			y += lengthdir_y(dspd, dire);
				if place_meeting(x, y, Smoothing) {
					face = "none";
				}
					 alarm_set(1, 10);
		}
	}
}


/* THIS IS OLD / MALFUNCTIONAL DASHING CODE
if lpos == "left" {instance_create_layer(oPlayer.x - 11, oPlayer.y - 11, "Instances", dSword); dSword.image_xscale = -1;}
if lpos == "right" {instance_create_layer(oPlayer.x + 11, oPlayer.y - 11, "Instances", dSword)}
if lpos == "up"  {instance_create_layer(oPlayer.x, oPlayer.y - 24, "Instances", dSword); dSword.image_angle += 90;}
if lpos == "down" {instance_create_layer(oPlayer.x, oPlayer.y - 5, "Instances", dSword); dSword.image_angle -= 90;}
*/

/*
if (dash && !left && !right && !down && !up) {
    if (lpos == "right") { face = "right"; Smoothing.x = oPlayer.x - 50; Smoothing.y = oPlayer.y}
    if (lpos == "left") { face = "left"; Smoothing.x = oPlayer.x + 50; Smoothing.y = oPlayer.y}
    if (lpos == "up") { face = "up"; Smoothing.y = oPlayer.y + 50; Smoothing.x = oPlayer.x}
    if (lpos == "down") { face = "down"; Smoothing.y = oPlayer.y - 50; Smoothing.x = oPlayer.x }
}

if (face == "left" || face == "right" || face == "up" || face == "down") {
	var dire = point_direction(x, y, Smoothing.x, Smoothing.y);
	var dspd = 5; // adjust as needed
	x += lengthdir_x(dspd, dire);
	y += lengthdir_y(dspd, dire);
		if place_meeting(x, y, Smoothing) {
			face = "none";
			state = "idle";
		}
}
*/
#endregion
// END DASHING ----------

// MOVEMENT ----------


if (state == "move"){
	
 xspd = right - left;
 yspd = down  - up;

event_inherited();

x += xspd * mspd;
y += yspd * mspd;


if (left) {sprite_index = sPlayerWR;  image_xscale = -1; image_speed = 1; lpos = "left"}
if (right) {sprite_index = sPlayerWR;  image_xscale =  1; image_speed = 1; lpos = "right"}
if (up)    {sprite_index = sPlayerWU;  image_xscale =  1; image_speed = 1; lpos = "up"}
if (down)  {sprite_index = sPlayerWD ; image_xscale =  1; image_speed = 1; lpos = "down"}
if (left && up) {sprite_index = sPlayerWR;  image_xscale = -1; image_speed = 1; lpos = "leftup"}
if (right && up) {sprite_index = sPlayerWR;  image_xscale =  1; image_speed = 1; lpos = "rightup"}
if (left && down)    {sprite_index = sPlayerWU;  image_xscale =  1; image_speed = 1; lpos = "leftdown"}
if (right && down)  {sprite_index = sPlayerWD ; image_xscale =  1; image_speed = 1; lpos = "rightdown"}


// MOVE DASHING ----------
/* if state != "dash" {
		if left && dash {/*x += (30 * xspd) * mspd*/
		/*	state = "dash";
			noinput = true;
			timer = 30;
			countdown = 5;
			alarm[0] = timer;
				if (timer <=6) {
					state = "move";
					noinput = false;
		
}
	
	}
	
*/
// NEED TO IMPLEMENT PROPER DASHING, ABOVE DOES NOT WORK CORRECTLY
/*
speed = distance_to_point(x,y,x-20,y-20)/room_speed*3.5
direction = point_direction(x,y,x2,y2)
x + sin(60*2) * 20
*/




}






// END MOVE DASHING


// END MOVEMENT ----------

// ATTACK ANIMATION ----------
if (state == "attack") {
	switch (lpos) {
		case "left":  sprite_index = sPlayerAR;  image_xscale = -1; break;
		case "right": sprite_index = sPlayerAR;  image_xscale =  1; break;
		case "up":	  sprite_index = sPlayerAU;  image_xscale =  1; break;
		case "down":  sprite_index = sPlayerAD ; image_xscale =  1; break;
	
	}	
}
// END ATTACK ANIMATION ----------

// move DASHING ----------
/*if (dash) && (!left) && (!right) && (!down) && (!up) {
	if (lpos) == "left" {x += 20};
	if (lpos) == "right" {x -= 20};
	if (lpos) == "up" {y += 20};
	if (lpos) == "down" {y -= 20};
		
}*/
// END move DASHING ----------

// MENU ----------
if (menu) {
	if ( !instance_exists(oMenu)){
		instance_create_layer(10, 10, "Instances", oMenu);
		//noinput = true;
		audio_play_sound(snmenuOpen, 1, 0);
		
	} else { instance_destroy(oMenu);
		//noinput = false;
		audio_play_sound(snMenuClose, 1, 0);}

}
 // END MENU ----------

// ITEM ----------

if (item) {
	instance_create_layer(x, y, "Instances", oBomb);
	
	
}

// END ITEM ----------









#endregion