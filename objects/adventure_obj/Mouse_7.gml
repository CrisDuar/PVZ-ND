if !instance_exists(spacebearlogo_obj)
and !instance_exists(optionsmenu_obj)
and !instance_exists(quitwindow_obj)
and !instance_exists(cursorwindow_obj)
and !instance_exists(deletewindow_obj)
and !instance_exists(zombieanim_obj)
and !audio_is_playing(gameover_snd){
        audio_stop_all();
        audio_play_sound(gameover_snd,1,false)
        instance_create(422,52,zombieanim_obj)
        scale=1
        image_speed=0.32*dlt
        if global.lang="en" sprite_index=adventure3_spr
        if global.lang="es" sprite_index=aventura3_spr
        zombiesale=false
}

