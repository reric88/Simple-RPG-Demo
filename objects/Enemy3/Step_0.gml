event_inherited();

if hp <= 0 {
	instance_destroy();	
}


mp_potential_step(oPlayer.x, oPlayer.y, mspd, 1);
//mp_potential_path()



/* 
if place_meeting(x, y, oPAttack){
	var inst = instance_place(x, y,oPAttack )
	hp -= inst.damage;
	
	
}
*/

/*
if object_exists(oPlayer) {
dir = point_direction(x, y, oPlayer.x, oPlayer.y);
}

xspd = lengthdir_x(mspd, dir);
yspd = lengthdir_y(mspd, dir);

event_inherited();

x += xspd;
y += yspd;