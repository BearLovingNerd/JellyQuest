
// Max row and column are 1 less than actual, due to array format
max_row = 7
max_col = 12

// Set up grid
var col_count = 0
var row_count = 0

repeat(max_row)
{
	repeat(max_col)
	{
		grid[row_count][col_count] = 0
		col_count ++
	}
	
	col_count = 0
	row_count ++
}

// Spawn Cubes: This alarm is recursive
alarm[0] = 0


