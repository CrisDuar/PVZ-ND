/// @description draw_belt(path, x1, y1, x3, y3, weight)
/// @param path
/// @param  x1
/// @param  y1
/// @param  x3
/// @param  y3
/// @param  weight
function draw_belt(argument0, argument1, argument2, argument3, argument4, argument5) {
	var pth = argument0

	var x1 = argument1
	var y1 = argument2

	var x3 = argument3
	var y3 = argument4

	var h = argument5

	var x2 = (x1 + x3)/2 
	var y2 = y3 + h
	/*
	path_change_point(pth, 0, x1, y1, 100);
	path_change_point(pth, 1, x2, y2, 100);
	path_change_point(pth, 2, x3, y3, 100);
	*/
	path_change_point(pth, 0, 0, 0, 100); // ahora el primer punto es el origen
	path_change_point(pth, 1, x2 - x1, y2 - y1, 100);
	path_change_point(pth, 2, x3 - x1, y3 - y1, 100);

	draw_set_color(c_maroon)

	for(var i = 0; i < 2; i++){
	    for(var j = 0; j < 2; j++){
	        draw_path(pth, x1 + i,  y1 + j, false);
	    }
	}
	draw_set_color(c_white)



}
