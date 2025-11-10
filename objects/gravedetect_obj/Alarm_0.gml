if global.nivelterminado=false{
//audio_sound_pitch(audio_play_sound(gravezombie_snd,1,false),random_range(0.85,1.05))
//audio_play_sound(gravesound_snd,1,false)
    with(instance_create(x,get_closest_row(y+28),zombiegrave_obj)){
        water=other.water
        obj=other.zominventory[irandom_range(0,array_length_1d(other.zominventory)-1)]
    }
    instance_create(x,y-60,graveeffect1_obj)
}

