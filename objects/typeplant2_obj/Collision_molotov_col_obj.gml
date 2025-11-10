if in_danger{
    audio_play_sound(escudo_snd, 1, false)
}else{
    with(instance_nearest(x,y,pastoinv_obj)){
        instance_create(x,y+30-offset,fuego_obj)
        instance_create(x,y-offset,destroygrave_obj)
    }
    vida=0
}

