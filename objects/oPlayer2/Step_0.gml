var backx = x - mask_index
var backy = y - mask_index

if keyboard_check(vk_right){
	x += 2;
}
if keyboard_check(vk_down){
	y += 2;
}
if keyboard_check(vk_left){
	x -= 2;
}
if keyboard_check(vk_up){
	y -= 2;
}

if place_meeting(x, y, oWall) {
	x = backx;
	y = backy;
}

/*

// Check for collisions with walls
if place_meeting(x, y, oWall) {
    // Move the object back to its previous position
    xprevious = x;
    yprevious = y;
}

// Check for collisions with enemies
if place_meeting(x, y, oEnemy) {
    // If this object is the player, lose health
    if object_index == oPlayer {
        health -= 1;
    }
    
    // Move the object back to its previous position
    xprevious = x;
    yprevious = y;
}