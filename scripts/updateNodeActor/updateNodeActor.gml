/// @Descripton Update Node Occupant Actor
/// @param X  
/// @param Y  
/// @param obj_ID

// Define var
var gridX = argument0;
var gridY = argument1;
var objID = argument2;

game_map[# gridX, gridY].occupant = objID;