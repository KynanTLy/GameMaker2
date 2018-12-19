/// @description Insert description here
// You can write your code in this editor

// Debug 
draw_self();

// Pathfinding
draw_sprite_ext(sprite_index, -1, x, y, 1, 1, 0, colour, 1);

// Draw position and neighbors
draw_text(x + 4, y + 4, string(ds_list_size(node_Neighbors)));
