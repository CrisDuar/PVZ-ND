if room==izombie_rm{
    with(instance_create(x,y-90,solmove_obj)){
        obj=menuzom_obj
        spr=zom_spr
        sprite_index=zom2_spr
        w=64
    }
    audio_sound_pitch(audio_play_sound(sol_snd,1,false),control_obj.sunpitch)
    control_obj.sunpitch+=0.25
    control_obj.zomes+=100
}

