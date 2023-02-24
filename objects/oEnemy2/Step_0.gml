if instance_exists(oPlayer) {
dir = point_direction(x, y, oPlayer.x, oPlayer.y);
}

xspd = lengthdir_x(mspd, dir);
yspd = lengthdir_y(mspd, dir);

event_inherited();

x += xspd;
y += yspd;

/*
var player = instance_nearest(x, y, oPlayer);
targetX = player.x;
targetY = player.y;

// calculate the path to the player
path_clear_points(path);
path_start(path, mspd, path_action_continue, true);

// move along the path
if (path_position < 1) {
    var moveX = path_get_x(path, path_position + 0.1) + x;
    var moveY = path_get_y(path, path_position + 0.1) + y;
    var moveLength = sqrt(moveX * moveX + moveY * moveY);
    if (moveLength > 0) {
        moveX /= moveLength;
        moveY /= moveLength;
    }
	
	event_inherited();
	
    x += moveX * mspd;
    y += moveY * mspd;
}
