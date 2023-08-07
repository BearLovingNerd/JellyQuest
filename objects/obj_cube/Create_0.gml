
enum color
{
	red, orange, yellow, green, blue, purple
}

color = irandom(5)
image_speed = 0
needs_wiggle = true

home_grid = instance_nearest(x, y, obj_grid)
current_row = 0
current_column = 0

alarm[0] = 1

color_set = function()
{
	image_index = 0
	image_speed = .5
	
	if color == color.red
		sprite_index = spr_red
	else if color == color.orange
		sprite_index = spr_orange
	else if color == color.yellow
		sprite_index = spr_yellow
	else if color == color.green
		sprite_index = spr_green
	else if color == color.blue
		sprite_index = spr_blue
	else if color == color.purple
		sprite_index = spr_purple
}

// Set Color
color_set()
	
check_match = function()
{
	var cube_type = color
	var ori_r = current_row
	var ori_c = current_column
	var grid  = obj_grid.grid
	
	var i = 1
	var cube_inspected = 0
	
	var r_solutions = [id]
	var c_solutions = [id]
	var above = 0
	var below = 0
	var left  = 0
	var right = 0
	
	// Up
	repeat(obj_grid.max_row - 1)
	{
		// Out of bounds
		if ori_r - i < 0
		{
			break;	
		}
		
		// Establish cube being inspected
		cube_inspected = grid [ori_r - i] [ori_c]
		
		// If symbol doesn't match, break
		if cube_inspected == 0 || cube_type != cube_inspected.color
		{
			break;	
		}
		// Else, add to solutions and increase amount of blocks above
		else
		{
			array_push(r_solutions, cube_inspected)
			above ++
		}
		
		// Increment i
		i ++
	}
	
	// Down
	i = 1
	repeat(obj_grid.max_row - 1)
	{
		// Out of bounds
		if ori_r + i > obj_grid.max_row - 1
		{
			break;	
		}
		
		// Establish cube being inspected
		cube_inspected = grid [ori_r + i] [ori_c]
		
		// If symbol doesn't match, break
		if cube_inspected == 0 || cube_type != cube_inspected.color
		{
			break;	
		}
		// Else, add to solutions and increase amount of blocks above
		else
		{
			array_push(r_solutions, cube_inspected)
			below ++
		}
		
		// Increment i
		i ++
	}
	
	// Left
	i = 1
	repeat(obj_grid.max_col - 1)
	{
		// Out of bounds
		if ori_c - i < 0
		{
			break;	
		}
		
		// Establish cube being inspected
		cube_inspected = grid [ori_r] [ori_c - i]
		
		// If symbol doesn't match, break
		if cube_inspected == 0 || cube_type != cube_inspected.color
		{
			break;	
		}
		// Else, add to solutions and increase amount of blocks above
		else
		{
			array_push(c_solutions, cube_inspected)
			left ++
		}
		
		// Increment i
		i ++
	}
	
	// Right
	i = 1
	repeat(obj_grid.max_col - 1)
	{
		// Out of bounds
		if ori_c + i > obj_grid.max_col - 1
		{
			break;	
		}
		
		// Establish cube being inspected
		cube_inspected = grid [ori_r] [ori_c + i]
		
		// If symbol doesn't match, break
		if cube_inspected == 0 || cube_type != cube_inspected.color
		{
			break;	
		}
		// Else, add to solutions and increase amount of blocks above
		else
		{
			array_push(c_solutions, cube_inspected)
			right ++
		}
		
		// Increment i
		i ++
	}
	
	
	// Check for match
	if (above + below + 1 >= 3) || (left + right + 1 >= 3)
	{
	
		// Delete cubes
		i = 0
		if array_length(r_solutions) >= 3
		{
			repeat(array_length(r_solutions))
			{
				with r_solutions[i]
				{
					instance_destroy()	
				}
				i ++
			}
		}
	
		i = 0
		if array_length(c_solutions) >= 3
		{
			repeat(array_length(c_solutions))
			{
				with c_solutions[i]
				{
					instance_destroy()	
				}
				i ++
			}
		}
	}
}
