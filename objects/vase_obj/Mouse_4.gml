if (global.iniciogame and !instance_exists(fadeout_obj) and global.gameover == false){

    audio_play_sound(mazo1_snd,1,false)
    instance_create(x+25,y-60,mazo2_obj)
    event_user(0)
}

