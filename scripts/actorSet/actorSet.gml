/// @Descripton Set the occupy actor for the node
/// @param Node_Object

node = argument0;

// Assign actor to occupy node
if(instance_position(node.x + 16, node.y + 16, o_Actor)){
	node.occupant = instance_position(node.x + 16, node.y + 16, o_Actor);
	node.occupant.gridX = node.gridX;
	node.occupant.gridY = node.gridY;
	
}//end assignement
