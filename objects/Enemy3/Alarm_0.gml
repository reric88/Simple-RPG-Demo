if path_exists(path) {
path_delete(path);
}


	
path = path_add();
mp_grid_path(global.gridMain, path, x, y, oPlayer.x, oPlayer.y, 1);
//mp_grid_path(Pathfinding.grid, path, x, y, oPlayer.x, oPlayer.y, 1);
//mp_potential_path(path, oPlayer.x, oPlayer.y, mspd, 4, 1);
path_start(path, mspd, path_action_stop, true);
timer = random_range(30, 60);
alarm_set(0, timer);

//}