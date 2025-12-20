if (global.iniciogame and !suddendeath){
	var _cam = view_camera[0]
	var _x = camera_get_view_x(_cam) + camera_get_view_width(_cam)/2

	var _min = floor(time / 3600)
	var _sec = floor((time / 60) % 60)

	_min = "0" + string(_min);
	_sec = (string_length(_sec) < 2 ? "0" : "") + string(_sec);
	draw_set_font(sudden_fnt)
	draw_set_halign(fa_center)
	draw_set_valign(fa_bottom)
	
	draw_text_colour_outline(_x, 587, string(_min) + ":" + string(_sec),c_white,c_white, 0.9,c_dkgray,c_dkgray,1,3,10,1,1,0)
}