
// Check Row Below
var row_below = current_row + 1

// If we're on the bottom, stop
if row_below < home_grid.max_row
{
	// If the space beneath us is empty, move down
	if home_grid.grid[row_below][current_column] == 0
	{
		// Empty space above, fill space below
		home_grid.grid[current_row][current_column] = 0
		home_grid.grid[row_below][current_column] = id
		
		// Set new row, row height position, and move towards it.
		current_row ++
	}
}

var target_y = (current_row * 32) + home_grid.y

// Stop at targeted height
if y >= target_y
{
	speed = 0
	y = target_y
	
	if needs_wiggle == true
	{
		needs_wiggle = false
		color_set()
	}
}
else
{
	needs_wiggle = true
	image_index = 0
	image_speed = 0
	move_towards_point(x, target_y, 6)	
}
