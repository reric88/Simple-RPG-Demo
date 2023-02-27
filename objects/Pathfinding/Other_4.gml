global.gridMain = mp_grid_create(0,0, room_width/16, room_height/16, 16, 16);
mp_grid_add_instances(global.gridMain, Enemy3, 0);
mp_grid_add_instances(global.gridMain, oWall, 0);


/*
grid = mp_grid_create(0,0, room_width/16, room_height/16, 16, 16);

mp_grid_add_instances(grid, oWall, 0);
mp_grid_add_instances(grid, Enemy3, 0);
