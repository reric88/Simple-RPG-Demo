if (state == "dash") {

state = "move";
noinput = false;
switch (lpos) {
	case "left":  sprite_index = sPlayerIR;  image_xscale = -1; break;
	case "right": sprite_index = sPlayerIR;  image_xscale =  1; break;
	case "up":	  sprite_index = sPlayerIU;  image_xscale =  1; break;
	case "down":  sprite_index = sPlayerID ; image_xscale =  1; break;
}
	
	
	
	
}

instance_destroy(Smoothing);