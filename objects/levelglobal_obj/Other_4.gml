//Move the current incomplete level to the center of the screen when the room is started

if (global.progress[? cond] == num){
    
    //__view_set( e__VW.XView, 0, x - (__view_get( e__VW.WView, 0 )/2) )
	var _cam = view_camera[0];
	var _xview = x - camera_get_view_width(_cam)/2;
	var _yview = camera_get_view_y(_cam);
	camera_set_view_pos(_cam, _xview, _yview)
}

