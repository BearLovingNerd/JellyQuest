
// If we're mostly through squish, reset and move

if state == "squish" && image_index >= 5 && keyboard_key_press(vk_anykey) 
	recolor();
	
// if we're idle, move
if state == "idle"
	event_inherited();
	
if state = "squish"
{
	var cube_inspected = home_grid.grid[current_row][current_column]
	
	// Break if cube doesn't exist
	if cube_inspected == 0
		exit;
	
	// Change cube color when paw is fully squished
	if image_index == 4
	{
		cube_inspected.color = color
		cube_inspected.color_set()
	}
}