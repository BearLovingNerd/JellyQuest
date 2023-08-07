// Inherit the parent event
event_inherited();

state = "idle"
color = color.blue
next_color = 0
image_speed = .5

// Changes sprite to squishing animation
swap = function()
{
	// Cube being swapped
	var cube_swapped = home_grid.grid[current_row][current_column]
	
	// Exit if the cube doesn't exist
	if cube_swapped == 0
		exit;
	
	// Memorize color to swap when paw is smooshed
	next_color = cube_swapped.color
	
	// Change state, match color
	state = "squish"
	
	// Set appropriate squishing sprite
	image_index = 0
	
	if color == color.red
		sprite_index = spr_redsquish
	else if color == color.orange
		sprite_index = spr_orangesquish
	else if color == color.yellow
		sprite_index = spr_yellowsquish
	else if color == color.green
		sprite_index = spr_greensquish
	else if color == color.blue
		sprite_index = spr_bluesquish
	else if color == color.purple
		sprite_index = spr_purplesquish
}

// Recolors the paw to match the new color it's holding
recolor = function()
{
	color = next_color
	state = "idle"
	
	if color == color.red
		sprite_index = spr_redpaw
	else if color == color.orange
		sprite_index = spr_orangepaw
	else if color == color.yellow
		sprite_index = spr_yellowpaw
	else if color == color.green
		sprite_index = spr_greenpaw
	else if color == color.blue
		sprite_index = spr_bluepaw
	else if color == color.purple
		sprite_index = spr_purplepaw	
}