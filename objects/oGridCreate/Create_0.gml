// -------------UNUSED
/*
global.grid = mp_grid_create(0, 0, room_width div 18, room_height div 13, 16, 16);
mp_grid_add_instances(global.grid, oWall, false);

with (oEnemy) {
  path = path_add();
  if mp_grid_path(global.grid, path, x, y, oPlayer.x, oPlayer.y, 1) {
    path_start(path, 0, 3, 0);
  }
 }