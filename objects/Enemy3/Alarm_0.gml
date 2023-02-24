path_delete(path);
path = path_add();

mp_grid_path(Pathfinding.grid, path, x, y, oPlayer.x, oPlayer.y, 1);

path_start(path, mspd, path_action_stop, true);



alarm_set(0, 120);