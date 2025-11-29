if (!locked){
    audio_stop_all();
    audio_play_sound(selectstone1_snd,1,false)
    image_yscale=0.98
    image_xscale=0.98
    room_goto(_room)
}

