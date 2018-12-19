/// @Descripton Set colour depending on action left
/// @param NodeID_colour
/// @param SelectedActor_Move
/// @param SelectedActor_Action

var node = argument0;
var move = argument1;
var action = argument2;

// Last action is yellow
if(action > 1){
	if(node.g_score > move){
		node.colour = c_yellow;
	} else {
		node.colour = c_aqua;
	}//end multiple action if
	
} else {
	
	// You only action is the last action
	node.colour = c_yellow;
	
}//end if


