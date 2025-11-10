//seleccionar y deseleccionar

if image_alpha==1{
    if global.vs_mtouch[packet_type] == true and control_obj.multijugador == true{
        if list_type==menuplants_obj{
            control2p_obj.pselect = multno
        }else{
            control2p_obj.zselect = multno
        }
    }

    if seedpacket_is_free(){
        if localselect=0{
            select_seedpacket();
        }else{
            deselect_seedpacket();
        }
    }else{//no hay soles
        audio_play_sound(errorseed_snd,1,false);
    }
    
    out_select = false
}

