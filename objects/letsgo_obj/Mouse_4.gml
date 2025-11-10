if visible==true{
    if ready=true{
        global.playerReady=true
        audio_play_sound(seleccionarplantas_snd,1,false)
        part_system_clear(menuselectplan_obj.part)
        
        with(camaractrl_obj){reverse=1}
        with(menuselectplan_obj){down=true; plant=0}
        
        if room!=izombie_rm{
            with(select_obj){
                global.list[slotnum]=slotsprite
            }
            
            save_costumes();
        }
        
        instance_destroy();
    }else{
        audio_play_sound(errorseed_snd,1,false);
    }
}

