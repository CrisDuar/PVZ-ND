switch(sprite_index){
    case desc_spr:
        if global.almanacpage<1{
            global.almanacpage++
            audio_play_sound(seleccionarplantas_snd,1,false)
        }else{
            audio_play_sound(errorseed_snd,1,false);
        }
    break
    
    case stat_spr:
        if global.almanacpage>0{
            global.almanacpage--
            audio_play_sound(seleccionarplantas_snd,1,false)
        }else{
            audio_play_sound(errorseed_snd,1,false);
        }
    break  
}

ctrlalmanac1_obj.limit = 0
ctrlalmanac1_obj.scroll = 0