// If the top row is empty, fill it
var spawner_column = 0
var x_offset = 0

repeat(max_col)
{
	if grid[0][spawner_column] == 0
	{
		var new_cube = instance_create_depth(x + x_offset, y - 32, 1, obj_cube)
		
		new_cube.current_row = 0
		new_cube.current_column = spawner_column
		new_cube.home_grid = id
		grid[0][spawner_column] = new_cube
	}
	
	spawner_column ++
	x_offset += 32
}

alarm[0] = 5