/// @description Insert description here
// You can write your code in this editor

// State Statement
switch(state){
	
	case "Initializing":
		// Set terrain after node creation
		with(o_Node){
			//show_debug_message("Node X: " + string(o_Node.x) + "/Node Y: " + string(o_Node.y));
			
			// Set terrian
			terrainSet(self);
			
			// Set Actors
			actorSet(self);
			
		}//end with
	
		state = "Ready";
		
		break;
		
		

	default:
		//show_message("No State Declared");
		break;

}//end switch state

