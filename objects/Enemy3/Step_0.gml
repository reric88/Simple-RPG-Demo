event_inherited();

if hp <= 0 {
	instance_destroy();	
}


// mp_potential_step(oPlayer.x, oPlayer.y, mspd, 1);


var rand = irandom_range(0, 360);


if distance_to_object(Enemy3) <= 30 {
	if path_exists(path) {
		path_delete(path);
		}
	dir = point_direction(x, y, rand, rand);
	dis = distance_to_object(Enemy3);
	xspd = lengthdir_x(dis, rand);
	yspd = lengthdir_y(dis, rand);

	//event_inherited();

	x += xspd;
	y += yspd;
	alarm_set(0, 60);
	}







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