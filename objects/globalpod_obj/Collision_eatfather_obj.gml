if global.gameover==false{
    if activada=false{
        if other.object_index!=beachballdrop_obj and other.object_index!=z_balloon_obj{
            activada=true
            instance_create(x,y,delpodadora_obj)
            image_speed=0.5
            audio_play_sound(snd,1,false)
        }
    }
    
    
    if other.object_index!=zombiediana_obj
    and other.object_index!=boss1_obj
    and other.object_index!=boss2_obj
    and other.object_index!=z_balloon_obj{
        hspeed=0
        audio_play_sound(choose(pea_impact_snd,pea_impact2_snd),1,false)
    }
}

