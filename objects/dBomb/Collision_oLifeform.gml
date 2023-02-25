	//other.x += 20;
	//other.y += 20;

var dir = point_direction(x, y, other.x, other.y);
var xForce = lengthdir_x(30, dir);
var yForce = lengthdir_y(30, dir);

	other.x += xForce;
	other.y += yForce;




if (other.id != creator){
	other.hp -= damage;
/*	
	// Apply knockback
	//if instance_exists(creator){
		var dir = point_direction(creator.x, creator.y, other.x, other.y);
	} else {
		var dir = point_direction(x, y, other.x, other.y);	
	}
	var xforce = lengthdir_x(knockback, dir);
	var yforce = lengthdir_y(knockback, dir);
	with (other) {
		other.x -= other.x * 10;
		other.y -= other.y *10;
	}
}

*/

var dir = point_direction(x, y, other.x, other.y);
var xForce = lengthdir_x(30, dir);
var yForce = lengthdir_y(30, dir);
with other {
	other.x -= 40;
	other.y -= 40;
}



}
/*
xspd = lengthdir_x(other.xspd * 5, dir);
yspd = lengthdir_y(other.yspd * 5, dir);

other.x -= xspd;
other.y -= yspd;