if image_alpha==1{
    audio_play_sound(pala_snd,1,false)
    
    control_obj.seleccionado=0
   
    with(menuplants_obj){localselect=0}
    
    if sprite_index==palaslot1_spr{
        control_obj.pala=true
    }else{
        audio_play_sound(cancelseedpack_snd,1,false)
         control_obj.pala=false
    }
    
    out_select = false
}

