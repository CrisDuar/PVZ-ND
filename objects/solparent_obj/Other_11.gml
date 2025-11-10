/// @description RECOLECTAR SOL
audio_sound_pitch(audio_play_sound(snd,1,false),control_obj.sunpitch)
control_obj.sunpitch += 0.25

if zom==false{
    control_obj.soles += costo
    with(instance_create(x,y,solmove_obj)){
        spr=other.spr1
        sprite_index=other.spr2
    }
}else{
    control_obj.zomes += costo
    with(instance_create(x,y,solmove_obj)){
        obj=menuzom_obj
        spr=zom_spr
        sprite_index=zom2_spr
        w=64
    }
}

instance_destroy();

