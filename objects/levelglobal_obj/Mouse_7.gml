if !instance_exists(fadeout_obj) and drag_t>0{
	
    if (read_progress(cond) >= num){
		
        audio_play_sound(aceptoption_snd,1,false)
		
		global.load_level = lvl;
		global.load_route = route;
        room_goto(generic_level_rm)
		
    }
    else{
        audio_play_sound(errorseed_snd,1,false)
        candadotemblando=true
    }
}

