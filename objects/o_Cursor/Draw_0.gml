/// @description Insert description here
// You can write your code in this editor

// Check to see if in window
if(hoverNode != noone){
	// Draw the selected over the grid
	draw_sprite(s_Selected, image_index, gridX * GRID_SIZE, gridY * GRID_SIZE);
	
}//end if

// Draw Cursor
draw_self();

// Debug
cursorDebug(hoverNode,gridX,gridY);
