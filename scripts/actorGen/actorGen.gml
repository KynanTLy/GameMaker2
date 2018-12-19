/// @Descripton Constructor for Actor
/// @param Actor  Object
/// @param X  
/// @param Y  
/// @param Name

// Define var
var i_actor_obj = argument0;
var i_gridX = argument1;
var i_gridY = argument2;


// Switch
with(instance_create_depth(i_gridX * GRID_SIZE, i_gridY * GRID_SIZE, 0 , i_actor_obj)){

	gridX = i_gridX;
	gridY = i_gridY;
	
	updateNodeActor(i_gridX, i_gridY, id);

}//end with
