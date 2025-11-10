switch(control_obj.scream_type){
    default:
        audio_play_sound(NOOOO_snd,1,false)
    break
    
    case 2:
        audio_play_sound(claire_scream_snd,1,false)
    break
    
    case 3:
        audio_play_sound(zomboss_scream_snd,1,false)
    break
}

with(instance_create(x,y,zombieswin_obj)){
    if room==izombie_rm{
        image_index=4
    }else{
        if global.lang="es"{
            image_index=3
        }else{
            image_index=1
        }
    }
}

