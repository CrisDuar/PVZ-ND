if global.nivelterminado=false and (irandom(100)<prob or audio_is_playing(suspenso1_snd)){
    with(instance_create(x,get_closest_row(y+28),zombiegrave_obj)){
        obj=other.zominventory[irandom_range(0,array_length_1d(other.zominventory)-1)]
        w=random_range(-0.6,-1.2)
        water=other.water
    }
    instance_create(x,y-60,graveeffect1_obj)
    prob+=irandom_range(5,10)
}

