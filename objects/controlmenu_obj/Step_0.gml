gpu_set_texfilter(global.interpolation);

if (global.cursor != 0){
	window_set_cursor(cr_none);
	
	cursor_sprite = mouse_sprites[global.cursor - 1][global.cursorcolor];
	
}else{
    cursor_sprite = -1
	window_set_cursor(cr_default);
}

if __background_get( e__BG.Index, 0 )=poolday_bg{
    if a>1 a=0
    a+=0.007*dlt
}

