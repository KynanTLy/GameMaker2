/// @Descripton AStar Pathfinding
/// @param SourceNode
/// @param Actor_movement
/// @param Actor_action

// Reset all node data
wipeNode();

var open;
var closed;

var start;
var current;
var neighbor;
var temp_gscore;

var range;
var costMod;

// Declare arguments
start = argument0;
range = argument1 * argument2;

open = ds_priority_create();
closed = ds_list_create();

// Add startong node to starting list
ds_priority_add(open, start, start.g_score);

// While open queue is not empty until all node are looked at
while(ds_priority_size(open) > 0){
	// Pop lowest g_score node
	current = ds_priority_delete_min(open);

	// Add that node to the visted 
	ds_list_add(closed, current);

	// Step through all current neighbor
	for(i = 0; i < ds_list_size(current.node_Neighbors); i += 1){
		
		// Store current neighbor in neighbor 
		neighbor = ds_list_find_value(current.node_Neighbors, i);
		
		// Add neighbor if it meets condition (passable, not occupant, projected g_score < move range, neighbor isn't in closed list)
		if(ds_list_find_index(closed, neighbor) < 0 and 
			neighbor.passable and 
			neighbor.occupant == noone and 
			neighbor.cost + current.g_score <= range)
		{
			// Movement cost is 1
			costMod = 1;
				
			// If node is diagonal change movement cost
			if(neighbor.gridX != current.gridX and neighbor.gridY != current.gridY){
				costMod = 1.5;
			}//end diagonal cost
			
			// Only cal new g_score for neighbor if it doesn't have one
			if(ds_priority_find_priority(open, neighbor) == 0 or ds_priority_find_priority(open, neighbor) == undefined){
				
				// Give neighbor the appropriate parent
				neighbor.parent = current;
			
				// Cal g_score
				neighbor.g_score = current.g_score + (neighbor.cost * costMod);
				
				// Add neighbor to open list
				ds_priority_add(open, neighbor, neighbor.g_score);
			
			// If neighbor score has been cal before
			} else {
				
				// Check to see if current node has cheaper g_score
				var temp_gscore =  current.g_score + (neighbor.cost * costMod);
				
				if(temp_gscore < neighbor.g_score){
					neighbor.parent = current;
					neighbor.g_score = temp_gscore;
					ds_priority_change_priority(open, neighbor, neighbor.g_score);
				
				}//end update reCal g_score
			
			}//end update g_score if
			
		}//end valid neighbor if
	
	}//end for loop

}// end while loop

//Round down all g_score for movement cal
with(o_Node){
	g_score = floor(g_score);
}//end rounding

// Paint path
for (i = 0; i < ds_list_size(closed); i += 1){
	current = ds_list_find_value(closed, i);
	current.moveNode = true;

	colourMoveNode(current, argument1, argument2);
}//end loop

// Clear list
ds_priority_destroy(open);
ds_list_destroy(closed);

