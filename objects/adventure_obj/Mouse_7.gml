if (global.popup_open == 0){
    audio_stop_all();
    audio_play_sound(gameover_snd,1,false)
    instance_create(422,52,zombieanim_obj)
    scale=1
    image_speed=0.32
    if global.lang="en" sprite_index=adventure3_spr
    if global.lang="es" sprite_index=aventura3_spr
    zombiesale=false
	
	global.popup_open = 20;
}

