/// @Descripton Cursor Debug
/// @param Selected_Node
/// @param X  
/// @param Y  

// Define arguements
hoverNode = argument0;
gridX = argument1;
gridY = argument2;


// Debug
if(hoverNode != noone){
	
	tempText = string(gridX) + " / " + string(gridY) + " / " + string(hoverNode.depth) + " = ";
	
	if(hoverNode.occupant != noone){
		tempText += hoverNode.occupant.name;
	}else{
		tempText += "noone";
	}

	draw_set_color(c_black);
	draw_rectangle(0,0,string_width(tempText),string_height(tempText),false);

	draw_set_color(c_white);
	draw_text(0,0,tempText);


	// Print cost and passable
	tempText = hoverNode.type;
	
	if(hoverNode.passable){
		tempText += " passable = true" + " cost = " + string(hoverNode.cost);
	}// end

	draw_set_color(c_black);
	draw_rectangle(0,20,string_width(tempText), 20 + string_height(tempText),false);

	draw_set_color(c_white);
	draw_text(0, 20, tempText);
	

	//Reset colour 
	draw_set_color(c_blue);

}//end if

// Debug for selectedActor
if(selectedActor != noone){
	tempText = selectedActor.name;
	
	draw_set_color(c_black);
	draw_rectangle(0, room_height, string_width(tempText), room_height - string_height(tempText), false);
	
	draw_set_color(c_white);
	draw_text(0, room_height - string_height(tempText), tempText);
	
	//Reset colour 
	draw_set_color(c_blue);
	
}//end if selectedActor









