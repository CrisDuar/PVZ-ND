var hour = date_get_hour(date_current_datetime());

if hour>=6 and hour<=11{
	global.tiempo=0
	
}else if hour>=12 and hour <=17{
	global.tiempo=1
	
}else{
	global.tiempo=2
}

if (room==menu_rm_){

		layer_vspeed(layer_get_id("BG_stars"), 0.2)
		layer_hspeed(layer_get_id("BG_stars"), -0.2)
	

	switch(global.tiempo){
	    case 0://Day
			layer_background_sprite(layer_background_get_id(layer_get_id("BG_menu")), menu_bg)
			layer_background_sprite(layer_background_get_id(layer_get_id("BG_clouds")), nubes_bg)
			layer_background_sprite(layer_background_get_id(layer_get_id("BG_sky")), cielo_bg)
			layer_set_visible(layer_get_id("BG_stars"), false)
	    break
    
	    case 1://Sunset
	
			layer_background_sprite(layer_background_get_id(layer_get_id("BG_menu")), menu2_bg)
			layer_background_sprite(layer_background_get_id(layer_get_id("BG_clouds")), nubes2_bg)
			layer_background_sprite(layer_background_get_id(layer_get_id("BG_sky")), cielo3_bg)
			layer_set_visible(layer_get_id("BG_stars"), false)
	    break
    
	    case 2://Night
			layer_background_sprite(layer_background_get_id(layer_get_id("BG_menu")), menu3_bg)
			layer_background_sprite(layer_background_get_id(layer_get_id("BG_clouds")), nubes3_bg)
			layer_background_sprite(layer_background_get_id(layer_get_id("BG_sky")), cielo4_bg)
			layer_set_visible(layer_get_id("BG_stars"), true)
	    break
	}
}



