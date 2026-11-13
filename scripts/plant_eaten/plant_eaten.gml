/// @description plant_eaten()
function plant_eaten() {
    
	if in_danger{

	    audio_stop_all();
	    audio_play_sound(zombie_eatend_snd,1,false)
	    game_over();
	    var _tile = instance_nearest(x,y-10, pastoinv_obj)
    
	    with(instance_create(_tile.x,_tile.y,void_obj)){
	        image_speed=0
	        image_xscale=_tile.image_xscale
	        image_yscale=_tile.image_yscale
	        sprite_index=saveseedcasilla_spr
	        image_index=control_obj.night
	        depth=-9999
        
	        timeline_index = game_over_saveseed_tml
	        timeline_position = 0;
	        timeline_running = true
	    }
	}



}
