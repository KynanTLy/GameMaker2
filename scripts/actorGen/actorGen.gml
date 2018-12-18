/// @Descripton Constructor for Actor
/// @param Actor  Object
/// @param X  
/// @param Y  
/// @param Name

// Define var
var i_actor_obj = argument0;
var i_gridX = argument1;
var i_gridY = argument2;

// Define Default var
var D_Name = "Undefined";


// Switch
with(instance_create_depth(i_gridX * GRID_SIZE, i_gridY * GRID_SIZE, 0 , i_actor_obj)){

	gridX = i_gridX;
	gridY = i_gridY;

	switch(argument_count){
		
		case 3:
			name = D_Name;
			break;
		case 4:
			name = argument3;
			break;
		default:
			show_message("Failed to construct: " + string(i_actor_obj));
			break;
			
	}//end switch
	
	updateNodeActor(i_gridX, i_gridY, id);

}//end with
