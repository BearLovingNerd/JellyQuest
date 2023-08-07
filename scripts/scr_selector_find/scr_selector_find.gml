function scr_selector_find(search_direction, search_distance)
{
	
	// escape if there is nothing to find
	if search_distance > room_width || search_distance < 0
		exit;
	
	// Increase search distance with each iteration
	search_distance += 16
	
// Nothing
	if search_direction == "nothing"
	{
		// Jumps to the controller object which has a "nothing" type bound to it
		my_hover = instance_nearest(x, y, obj_selector)
		exit;
	}
	
// Search closest/center
	if search_direction == "center"
	{
		// Used to jump to instance truly closest
		my_hover = instance_nearest(x, y, obj_cube)
		
		// Pass position information
		x = my_hover.x
		y = my_hover.y
		current_row    = my_hover.current_row
		current_column = my_hover.current_column
		exit;
	}
	
// Search Up
	if search_direction == "up"
	{
		// Find closest instance above me
		var new_hover = instance_nearest(x, y - search_distance, obj_cube)
	
		// If new hover is my_hover, or is below me, keep looking
		if (new_hover == my_hover) || (new_hover.y > y) 
		{
			scr_selector_find("up", search_distance)
			exit;
		}
		else
		{
			// set new my_hover and position
			my_hover = new_hover
			x = my_hover.x
			y = my_hover.y
			exit;
		}
	}

// Search Down
	if search_direction == "down"
	{
		// Find closest instance below me
		var new_hover = instance_nearest(x, y + search_distance, obj_cube)
		
		// If new hover is my_hover, or is above me, keep looking
		if (new_hover == my_hover) || (new_hover.y < y)
		{
			scr_selector_find("down", search_distance)
			exit;
		}
		else
		{
			// set new my_hover and position
			my_hover = new_hover
			x = my_hover.x
			y = my_hover.y
			exit;
		}
	}

// Search Left
	if search_direction == "left"
	{
		// Find closest instance to the left
		var new_hover = instance_nearest(x - search_distance, y, obj_cube)
		
		// If new hover is my_hover, or is on my right, keep looking
		if (new_hover == my_hover) || (new_hover.x > x)
		{
			scr_selector_find("left", search_distance)
			exit;
		}
		else
		{
			// set new my_hover and position
			my_hover = new_hover
			x = my_hover.x
			y = my_hover.y
			exit;
		}
	}
	
// Search Right
	if search_direction == "right"
	{
		// Find closest instance to the right
		var new_hover = instance_nearest(x + search_distance, y, obj_cube)
		
		// If new hover is my_hover, or is on my left, keep looking
		if (new_hover == my_hover) || (new_hover.x < x)
		{
			scr_selector_find("right", search_distance)
			exit;
		}
		else
		{
			// set new my_hover and position
			my_hover = new_hover
			x = my_hover.x
			y = my_hover.y
			exit;
		}
	}
}