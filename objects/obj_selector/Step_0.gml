var left  = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left)
var right = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right)
var down  = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down)
var up    = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)   
var swap_mechanic  = keyboard_check_pressed(vk_space) || keyboard_check(ord("Z"))



// Internal Movement Variables
var move_speed = 18
var bs_move_cd = 8

// Cooldown Reset
if move_cd > 0
{
	move_cd -= 1
}
if swap_cd > 0
{
	swap_cd -= 1
}

if swap_mechanic
{
	swap()
}

// If move is off cooldown
if move_cd == 0 && swap_cd == 0
{
	if left
	{
		// HUD Checking
		if current_column == 0
			exit;
		else
		{
			move_cd = bs_move_cd
			current_column --
			path_start(path_left, move_speed, path_action_stop, false)
			exit;
		}
	}
		
	if right
	{
		if current_column == obj_grid.max_col - 1
			exit;
		else
		{
			move_cd = bs_move_cd
			current_column ++
			path_start(path_right, move_speed, path_action_stop, false)
			exit;
		}
	}
		
	if up
	{
		if current_row == 0
			exit;
		else
		{
			move_cd = bs_move_cd
			current_row --
			path_start(path_up, move_speed, path_action_stop, false)
			exit;
		}
	}
		
	if down
	{
		if current_row == obj_grid.max_row - 1
			exit;
		else
		{
			move_cd = bs_move_cd
			current_row ++
			path_start(path_down, move_speed, path_action_stop, false)
			exit;
		}
	}
}
