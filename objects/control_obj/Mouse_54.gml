if multijugador=false or global.vstouch=true{
    if instance_exists(menuplants_obj){
        if !seleccionado=0{
            seleccionado=0
            audio_play_sound(cancelseedpack_snd,1,false)
            with(menuplants_obj){localselect=0}
        }
        
        if pala=true{
        audio_play_sound(cancelseedpack_snd,1,false)
        pala=false
        }
    }
        
    if instance_exists(menuzombi_obj){
        if !zomseleccionado=0{
            audio_play_sound(cancelseedpack_snd,1,false)
            zomseleccionado=0
            with(menuzombi_obj){localselect=0}
        }
    }
}

