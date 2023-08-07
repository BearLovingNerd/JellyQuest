
// Turn on with manager
if obj_manager.debuggle == false
	exit;
	
draw_set_color(c_white)
draw_set_halign(fa_left)

var r = 0
var c = 0
var x_offset = 0
var y_offset = 0

repeat(max_row)
{
	repeat(max_col)
	{
		draw_text(x + x_offset, y + y_offset, grid[r][c])
		x_offset += 70
		c ++
	}
	
	x_offset = 0
	y_offset += 20
	c = 0
	r ++
}