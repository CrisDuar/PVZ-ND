if visible==true or control_obj.multijugador==true{
    image_alpha+=0.2
    var proceed = true;
    
    with(select_obj){
        if (ocupied == false){
            proceed = false;
            break;
        }
    }
    
    if proceed==true{
        ready=true
        if enter=false{image_index=0}else{image_index=1}
        
        if control_obj.multijugador=true{
            global.playerReady=true
            audio_play_sound(seleccionarplantas_snd,1,false)
            
            with(camaractrl_obj){reverse=1}
            with(menuselectplan_obj){down=true; plant=0}
            
            instance_destroy();
        }
    }else{
        image_index=2
        ready=false
    }
}

