event_inherited();
if soltarproteccion = false{
    with(instance_create(x-40,y-10,popdrop_obj)){
            audio_play_sound(pophead_snd,1,false);
            w=other.water
            image_index=2
            sprite_index=trashcan_spr;
            image_blend=other.image_blend
            point=other.y
            depth=other.depth-10
        }
}

