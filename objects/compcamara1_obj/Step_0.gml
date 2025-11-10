if done=false{
    switch(room){
        default:
            audio_play_sound(readyplant_snd,1,false)
            instance_create(x,y,readysetplant_obj)
            done=true
        break
        
        case nivel30_rm:
        case levelhard2_6_rm:
            if boss1_obj.bossready=true{
                audio_play_sound(readyplant_snd,1,false)
                instance_create(x,y,readysetplant_obj)
                done=true
            }
        break
        
        case nivel51_rm:
        case levelhard3_6_rm:
            if boss2_obj.bossready=true{
                audio_play_sound(readyplant_snd,1,false)
                instance_create(x,y,readysetplant_obj)
                done=true
            }
        break
        
        case nivel73_rm:
       //case levelhard3_6_rm:
            if boss3_obj.bossready=true{
                audio_play_sound(readyplant_snd,1,false)
                instance_create(x,y,readysetplant_obj)
                done=true
            }
        break
    }
}

