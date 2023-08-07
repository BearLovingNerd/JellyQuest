/*
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