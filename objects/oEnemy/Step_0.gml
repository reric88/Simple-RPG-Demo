

/*
grid = mp_grid_create(0, 0, room_width div 18, room_height div 13, 16, 16);
path = path_add();

mp_grid_add_instances(path, oWall, 1);
mp_grid_path(grid, path, x, y, oPlayer.x, oPlayer.y, 0);
path_start(path, 3, 0, 1);






/*
if hp >0 && ko == false{
script_execute(state);


if distance_to_object(oPlayer) <= 5{
	alarm[1] = 30;
}
else {
	alarm[1] = 30;
}


}

if hp <= 0 && ko == false{
	ko = true;
	spd = 0;
	//alarm[2] = 60;
	instance_destroy();
}
*/

/*
//TARGETED MOVEMENT

// get the player's position
var player = instance_nearest(x, y, oPlayer);
var targetX = player.x;
var targetY = player.y;

// calculate the path to the player
// if distance_to_object(oPlayer) <= sight 
if distance_to_object(oPlayer) <= sight {
path_clear_points(path);
path_add_point(path, x, y, moveSpeed);
path_add_point(path, targetX, targetY, moveSpeed);
path_start(path, moveSpeed, path_action_stop, true);

// move along the path
var moveX = path_get_x(path, path_position + 0.1) - x;
var moveY = path_get_y(path, path_position + 0.1) - y;
var moveLength = sqrt(moveX * moveX + moveY * moveY);

if (moveLength > 0) {
    moveX /= moveLength;
    moveY /= moveLength;
}

var newX = x + moveX * moveSpeed;
var newY = y + moveY * moveSpeed;

// Check for collisions with walls
if (place_meeting(newX, y, oWall)) {
    moveX -= 0;
	path_endaction = path_action_restart;
} 

if (place_meeting(x, newY, oWall)) {
    moveY = 0;
	path_endaction = path_action_restart;
}

// move the enemy
x += moveX * moveSpeed;
y += moveY * moveSpeed;
}
//RANDOM MOVEMENT 
/*

movementTimer--;

// if the movement timer has expired, generate a new movement target
if (movementTimer <= 0) {
    targetX = x + random_range(-64, 64);
    targetY = y + random_range(-64, 64);
    movementTimer = 180; // reset the movement timer
}

// move towards the movement target
var moveX = sign(targetX - x);
var moveY = sign(targetY - y);

x += moveX * moveSpeed;
y += moveY * moveSpeed;

    if (place_meeting(x + moveSpeed, y, oWall)) {
        x -= moveSpeed;
		movementTimer = 0;
    }
    if (place_meeting(x, y + moveSpeed, oWall)) {
        y -= moveSpeed;
		movementTimer = 0;
    }
	*/