/// @Descripton Set the terrain for the node
/// @param Node_Object

node = argument0;


// Check instance for terrain
if(instance_position(node.x + 16, node.y + 16, o_Terrain)){
	
	// Assign terrian
	tempTerrain = instance_position(node.x + 16, node.y + 16, o_Terrain);
	node.type = tempTerrain.type;
	node.sprite_index = tempTerrain.sprite_index;
	node.passable = tempTerrain.passable;
	node.cost = tempTerrain.cost;
	
	// Remove the temp Terrain we created
	with(tempTerrain){
		instance_destroy();
	}//end remove terrain
	
}//end assignement
