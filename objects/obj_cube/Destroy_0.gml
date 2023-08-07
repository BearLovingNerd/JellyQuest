
home_grid.grid[current_row][current_column] = 0

var i = 1
repeat(current_row)
{
	with home_grid.grid[current_row - i][current_column]
	{
		alarm[0] = 4
	}
	i ++
}
