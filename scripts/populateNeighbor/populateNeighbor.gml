/// @Descripton Setup all node neighbor

// Populate neighbor list of map nodes
for(x = 0; x < ds_grid_width(game_map); x += 1){
	for(y = 0; y < ds_grid_height(game_map); y += 1){
		
		var node = game_map[# x, y];

		// add west neighbor
		if(x > 0){
			ds_list_add(node.node_Neighbors, game_map[# x - 1, y]);
		}//end if
		
		// add east neighbor
		if(x < ds_grid_width(game_map) - 1){
			ds_list_add(node.node_Neighbors, game_map[# x + 1, y]);
		}//end if
		
		// add north neighbor
		if(y > 0){
			ds_list_add(node.node_Neighbors,game_map[# x, y - 1]);
		}//end if
		
		// add south neighbor
		if(y < ds_grid_height( game_map) - 1){
			ds_list_add(node.node_Neighbors, game_map[# x, y + 1]);
		}//end if
		
		// add northwest neighbor
		if(x > 0 and y > 0){
			ds_list_add(node.node_Neighbors,  game_map[# x - 1, y -1]);
		}//end if
		
		// add northeast neighbor
		if(x < ds_grid_width( game_map) - 1 and y > 0){
			ds_list_add(node.node_Neighbors,  game_map[# x + 1, y -1]);
		}//end if 
		
		// add southwest neighbor
		if(x > 0 and y < ds_grid_height( game_map) - 1){
			ds_list_add(node.node_Neighbors,  game_map[# x - 1, y + 1]);
		}//end if
		
		// add southeast neighbor
		if(x < ds_grid_width( game_map) - 1 and y < ds_grid_height( game_map) - 1){
			ds_list_add(node.node_Neighbors,  game_map[# x + 1, y + 1]);
		}//end if
		
	}//end y for 
}//end x for

