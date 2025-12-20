if (global.popup_open == 0){
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

