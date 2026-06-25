event_inherited();

if (bounce){
	if (bounce_t > 0) bounce_t--;
	
	if (y < control_obj.lim_top || y > control_obj.lim_bottom)
	|| ((x < control_obj.lim_left || x > control_obj.lim_right) && bounce_mode != 0){
		do_bounce();	
	}
}