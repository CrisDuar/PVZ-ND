function draw_tile_selection() {
	var lobjy=collision_line_first(x,room_height,x,0,pastoinv_obj,false,false)
	var fobjy=collision_line_first(x,0,x,room_height,pastoinv_obj,false,false)

	var lobjx=collision_line_first(1088,y,0,y,pastoinv_obj,false,false)
	var fobjx=collision_line_first(0,y,1088,y,pastoinv_obj,false,false)

	draw_set_alpha(0.25)
	draw_rectangle_colour(x-41, fobjy.y-49*fobjy.image_yscale, x+41, lobjy.y+49*lobjy.image_yscale, c_white, c_white, c_white, c_white, false);
	draw_rectangle_colour(fobjx.x-41, y-49*image_yscale, lobjx.x+41, y+49*image_yscale, c_white, c_white, c_white, c_white, false);
	draw_set_alpha(1)




}
