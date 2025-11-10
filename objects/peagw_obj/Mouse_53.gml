if p1<=0
and mouse_x>=230
and global.gameover=false
and global.iniciogame=true{
    if sprite_index=gw_headidle_spr{
        image_index=0
        sprite_index=gw_headshoot_spr
        ice=gw_iceshoot_spr
        tallo=gw_talloshoot_spr
        helmet=gw_helmetshoot_spr
        if p2<=0{
            audio_sound_pitch(audio_play_sound(gwshoot1_snd,1,false),random_range(0.8,1.2))
            if p3>0{
                audio_sound_pitch(audio_play_sound(icepeashot_snd,1,false),random_range(0.8,1.2))
                p3--
                with(instance_create(x,y-40,gwpea_obj)){
                    direction=other.direction
                    type=0
                }
                
                with(instance_create(x,y-40,gwpea_obj)){
                    direction=other.direction+10
                    type=0
                }
                
                with(instance_create(x,y-40,gwpea_obj)){
                    direction=other.direction-10
                    type=0
                }
            }else{
                
                with(instance_create(x,y-40,gwpea_obj)){
                    direction=other.direction
                }
            }
        }else{
            p2--
            audio_sound_pitch(audio_play_sound(gwthrow_snd,1,false),random_range(0.8,1.2))
            with(instance_create(x,y-40,gw_explobulb_obj)){
                objx=mouse_x
                objy=mouse_y
            }
        }
    }
}

