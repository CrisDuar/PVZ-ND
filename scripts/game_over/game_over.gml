/// @description game_over()
function game_over() {

	if control_obj.multijugador=false and room!=izombie_rm{
	    global.gameover=true
	    audio_play_sound(gameover_snd,1,false)
    
	    control_obj.seleccionado=0
	    control_obj.zomseleccionado=0
	    control_obj.pala=false
	    control_obj.wind = false
	}else{
	    audio_stop_all();
	    audio_play_sound(prize_snd,1,false)
	    instance_create(655,335,zombiswin2p_obj)
	}

	if instance_exists(zs_endless_obj){
	    with(zs_endless_obj){
	        survival_newgame(filename);
	    }
	}



}
