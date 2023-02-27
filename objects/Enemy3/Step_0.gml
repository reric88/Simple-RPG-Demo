event_inherited();

if hp < php {
	audio_play_sound(snHit2, 2, 0);
	php = hp;
}


if hp <= 0 {
	audio_play_sound(snHit1, 2, 0);
	instance_destroy();	
}


mp_potential_step(oPlayer.x, oPlayer.y, mspd, 1);


//var rand = irandom_range(0, 360);


if distance_to_object(Enemy3) <= 1 {
	if path_exists(path) {
		path_delete(path);
		}
	dir = point_direction(x, y, Enemy3.x, Enemy3.y) + 180;
	dis = distance_to_object(Enemy3);
	xspd = lengthdir_x(dis/2, dir);
	yspd = lengthdir_y(dis/2, dir);

	//event_inherited();

	x += xspd * mspd;
	y += yspd * mspd;
	alarm_set(0, 30);
	}
/*
var _xx = x + lengthdir_x(64, rand);
var _yy = y + lengthdir_y(64, image_angle);
instance_create_layer(_xx, _yy, "Bullets", obj_bullet);




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