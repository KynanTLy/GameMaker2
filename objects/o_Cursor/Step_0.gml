/// @description Insert description here
// You can write your code in this editor

// Update cursor position
x = mouse_x;
y = mouse_y;

gridX = floor(x/GRID_SIZE);
gridY = floor(y/GRID_SIZE);

// Check if mouse is in game window
if(gridX < 0 or gridY < 0 or gridX >= room_width/GRID_SIZE or gridY >= room_height/GRID_SIZE){
	hoverNode = noone;
}else{
	hoverNode = game_map[# gridX, gridY]; 	
}//end if 


// left mouse click event
if(mouse_check_button_pressed(mb_left)){
	if(hoverNode.occupant != noone){
		selectedActor = hoverNode.occupant;
	}else{
		selectedActor = noone;
	}//end if
}//end if left click

// right mouse click event
if(mouse_check_button_pressed(mb_right)){
	if(selectedActor != noone and hoverNode.occupant == noone and hoverNode.passable){
		// first clear node of selected actor
		game_map[# selectedActor.gridX, selectedActor.gridY].occupant = noone;
		
		// Update slectedActor pos and info
		selectedActor.gridX = gridX;
		selectedActor.gridY = gridY;
		selectedActor.x = hoverNode.x;
		selectedActor.y = hoverNode.y;
		
		// Update new node occupant status
		hoverNode.occupant = selectedActor;
		
	} else {
		
		// Clear selection on invalid action
		selectedActor = noone;
	
	}//end if 
	
}//end if right click
