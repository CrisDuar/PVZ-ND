event_inherited();

if soltarproteccion=false
and explo=false{
    audio_stop_sound(s)
    with(instance_create(x-25,y-60+30*water,popdrop_obj)){
        w=other.water
        point=other.y;
        sprite_index=musicbox_spr;
        depth=other.depth-10
    }
}

