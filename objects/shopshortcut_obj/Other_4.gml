if !audio_is_playing(music_chooseseeds_snd) and (instance_exists(musicglobalhorde_obj) or instance_exists(musicloop_obj))
{audio_play_sound(music_chooseseeds_snd,1,true)}

///UPDATE THE AMOUNT OF SLOTS
if (!instance_exists(lock_selection_obj)){
    with(menuselectplan_obj){
    
        var _newslots = 5
    
        if room!=iplant_rm and room!=izombie_rm{
            if (global.niveles>10) _newslots++
            if (global.niveles>61) _newslots++
            if (global.upgrade2==true) _newslots++
        }
        
        //CASILLAS VACIAS
        if (instance_number(select_obj) < _newslots){
        
            for (var i = instance_number(select_obj); i < _newslots; i++){
            
                with(instance_create(x-300,(101+(63*i)),select_obj)){
                    slotnum = i
                }
            }
        }
    }
}

