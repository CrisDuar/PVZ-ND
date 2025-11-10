if !instance_exists(spacebearlogo_obj)
and !instance_exists(optionsmenu_obj)
and !instance_exists(quitwindow_obj)
and !instance_exists(cursorwindow_obj)
and !instance_exists(deletewindow_obj)
and !audio_is_playing(gameover_snd){
    save_game();
    audio_play_sound(aceptoption_snd,1,false);
    audio_play_sound(coffee_snd,1,false);   
    if !instance_exists(damage_obj){
        with(instance_create(x,y-20,damage_obj)){
        if global.lang="en"{value="Game saved!!"}
        else{value="¡Juego guardado!"}
        }
    }
}

