if instance_exists(musicmenu_obj){
	switch(global.tiempo){
	    case 1:
			draw_sprite_ext(filtro1bg_spr,0,0,0,1,1,0,c_white,1)
	    break
    
	    case 2:
			draw_sprite_ext(filtro2bg_spr,0,0,0,1,1,0,c_white,1)
	    break
	}
}