/// @description Insert description here
// You can write your code in this editor

// Define List of Neighbors
node_Neighbors = ds_list_create();

occupant = noone;
passable = true;

gridX = 0;
gridY = 0;

// Terrain Related var
type = "node";
cost = 1;

// PathFinding
colour = c_white;

// Where the node came from
parent = noone;

g_score = 0;

moveNode = false;