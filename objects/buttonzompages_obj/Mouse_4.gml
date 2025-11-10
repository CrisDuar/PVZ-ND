switch(image_xscale){
    case 1:
        if menuselectplan_obj.zompag < menuselectplan_obj.zommaxpag menuselectplan_obj.zompag++
    break
    
    case -1:
        if menuselectplan_obj.zompag > 0 menuselectplan_obj.zompag--
    break
}
if instance_exists(letsgo_obj){
    switch(image_index){
    case 0:
    case 1:
        audio_play_sound(seleccionarplantas_snd,1,false)
    break
    
    case 2:
        audio_play_sound(errorseed_snd,1,false);
    break
    }
}

