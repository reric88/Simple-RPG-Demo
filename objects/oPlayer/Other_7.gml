
if (state == "attack") {
	
state = "idle";
noinput = false;
instance_destroy(dSword);
//resume from last position
	switch (lpos) {
		case "left":  sprite_index = sPlayerWR;  image_xscale = -1; break;
		case "right": sprite_index = sPlayerWR;  image_xscale =  1; break;
		case "up":	  sprite_index = sPlayerWU;  image_xscale =  1; break;
		case "down":  sprite_index = sPlayerWD ; image_xscale =  1; break;



}

}