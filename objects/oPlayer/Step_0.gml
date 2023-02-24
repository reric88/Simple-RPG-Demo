
// INPUT SCRIPT ----------
sc_input();
// END INPUT SCRIPT ----------

depth = -y;

#region BUTTON FUNCTIONS

// ATTACK ----------
if (attack == 1) {state = "attack"; image_index = 0; noinput = true; attack = 0;
	audio_play_sound(snSword, 1, 0);
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
 hspd = right - left;
 vspd = down  - up;

x += hspd * mspd;
y += vspd * mspd;

if (left)  {sprite_index = sPlayerWR;  image_xscale = -1; image_speed = 1; lpos = "left"}
if (right) {sprite_index = sPlayerWR;  image_xscale =  1; image_speed = 1; lpos = "right"}
if (up)    {sprite_index = sPlayerWU;  image_xscale =  1; image_speed = 1; lpos = "up"}
if (down)  {sprite_index = sPlayerWD ; image_xscale =  1; image_speed = 1; lpos = "down"}

}
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