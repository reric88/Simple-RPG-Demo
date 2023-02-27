if (lpos == "left") 
{instance_create_layer(oPlayer.x - 11, oPlayer.y - 11, "Instances", dSword); dSword.image_xscale = -1;}

if (lpos == "right") 
{instance_create_layer(oPlayer.x + 11, oPlayer.y - 11, "Instances", dSword)}

if (lpos == "up") 
{instance_create_layer(oPlayer.x, oPlayer.y - 24, "Instances", dSword); dSword.image_angle += 90;}

if (lpos == "down") 
{instance_create_layer(oPlayer.x, oPlayer.y - 5, "Instances", dSword); dSword.image_angle -= 90;}

