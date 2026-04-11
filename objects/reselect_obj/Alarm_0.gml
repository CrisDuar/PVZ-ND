audio_play_sound(coffee_snd,1,false)
audio_play_sound(seleccionarplantas_snd,1,false)
load_costumes();

show_debug_message(global.list);

for(var i=0; i < instance_number(select_obj); i++){
    with(globalselect_obj){
        if global.list[i]==sprite{
            press_globalselect(i)
            
            with(selectanim_obj){
                set_costume_sprites();
            }
            
            break;
        }
    }
}

