gpu_set_texfilter(global.interpolation);

if (global.cursor != 0){
	window_set_cursor(cr_none);
	
	cursor_sprite = mouse_sprites[global.cursorcolor][global.cursor];
	
}else{
	window_set_cursor(cr_default);
}

if __background_get( e__BG.Index, 0 )=poolday_bg{
    if a>1 a=0
    a+=0.007*dlt
}

