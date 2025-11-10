if window_get_fullscreen(){
    audio_play_sound(aceptoption_snd,1,false);
    window_set_fullscreen(false);
}
else{
    audio_play_sound(aceptoption_snd,1,false);
    window_set_fullscreen(true);
}

