
// INPUT SCRIPT ----------
sc_input();
// END INPUT SCRIPT ----------

depth = -y;

#region BUTTON FUNCTIONS

// ATTACK ----------
if (attack == 1) {state = "attack"; image_index = 0; noinput = true; attack = 0;
	audio_play_sound(snSword, 1, 0);
		if lpos == "left" {instance_create_layer(oPlayer.x - 11, oPlayer.y - 11, "Instances", dSword); dSword.image_xscale = -1;}
		if lpos == "right" {instance_create_layer(oPlayer.x + 11, oPlayer.y - 11, "Instances", dSword)}
		if lpos == "up"  {instance_create_layer(oPlayer.x, oPlayer.y - 24, "Instances", dSword); dSword.image_angle += 90;}
			if lpos == "down" {instance_create_layer(oPlayer.x, oPlayer.y - 5, "Instances", dSword); dSword.image_angle -= 90;}
			
		
	}
// END ATTACK ----------

// DASHING ----------
if (dash) && (!left) && (!right) && (!down) && (!up) {
	if (lpos) == "left" {x += 20};
	if (lpos) == "right" {x -= 20};
	if (lpos) == "up" {y += 20};
	if (lpos) == "down" {y -= 20};
		
}
	
// END DASHING ----------

// MOVEMENT ----------
if (state == "idle") {
 xspd = right - left;
 yspd = down  - up;

event_inherited();

x += xspd * mspd;
y += yspd * mspd;

if (left)  {sprite_index = sPlayerWR;  image_xscale = -1; image_speed = 1; lpos = "left"}
if (right) {sprite_index = sPlayerWR;  image_xscale =  1; image_speed = 1; lpos = "right"}
if (up)    {sprite_index = sPlayerWU;  image_xscale =  1; image_speed = 1; lpos = "up"}
if (down)  {sprite_index = sPlayerWD ; image_xscale =  1; image_speed = 1; lpos = "down"}

// MOVE DASHING ----------
/* if state != "dash" {
		if left && dash {/*x += (30 * xspd) * mspd*/
		/*	state = "dash";
			noinput = true;
			timer = 30;
			countdown = 5;
			alarm[0] = timer;
				if (timer <=6) {
					state = "idle";
					noinput = false;
		
}
	
	}
	
*/
// NEED TO IMPLEMENT PROPER DASHING, ABOVE DOES NOT WORK CORRECTLY








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

// IDLE DASHING ----------
if (dash) && (!left) && (!right) && (!down) && (!up) {
	if (lpos) == "left" {x += 20};
	if (lpos) == "right" {x -= 20};
	if (lpos) == "up" {y += 20};
	if (lpos) == "down" {y -= 20};
		
}
// END IDLE DASHING ----------

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