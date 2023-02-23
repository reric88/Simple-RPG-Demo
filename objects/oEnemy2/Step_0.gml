
	
	
	
	global.grid = mp_grid_create(0, 0, room_width div 32, room_height div 32, 32, 32);
mp_grid_add_instances(global.grid, oWall, false);
with (oEnemy2)
{
    path = path_add();
    if mp_grid_path(global.grid, path, x, y, oPlayer.x, oPlayer.y, 1)
    {
        path_start(path, 0, 3, 0);
    }
}
if mp_grid_path(global.grid, path, x, y, oPlayer.x, oPlayer.y, 1)
{
    draw_path(path, x, y, false);
}

if place_meeting(x, y, oPlayer) {
move_bounce_all(true)	
}