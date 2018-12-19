/// @description Insert description here
// You can write your code in this editor

// Init Global var
Globals();

// Init var
state = "Initializing";

mapWidth  = room_width/GRID_SIZE;
mapHeight = room_height/GRID_SIZE;

game_map = ds_grid_create(mapWidth, mapHeight);

//debug colour
draw_set_colour(c_blue);

//show_debug_message("width:" + string(ds_grid_width(game_map)));
//show_debug_message("height:" + string(ds_grid_height(game_map)));

// Making the Grid
for(x = 0; x < ds_grid_width(game_map); x += 1){
	for (y = 0; y < ds_grid_height(game_map); y += 1){

		ds_grid_add(game_map, x , y , instance_create_depth(x * GRID_SIZE, y * GRID_SIZE,1, o_Node));
		game_map[# x, y].gridX = x;
		game_map[# x, y].gridY = y;
		//show_debug_message("X:" + string(x) + "/Y" + string(y));
		
	}//end y for
}//end x for

//show_debug_message("Out of the loop");

// Populate neighbor list
populateNeighbor();

// Create Cursor
instance_create_depth(x,y,-3,o_Cursor);

// Create Actor
actorGen(o_Hero, 5, 5);