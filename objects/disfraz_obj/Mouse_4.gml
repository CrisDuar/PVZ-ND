if image_alpha==1{
    audio_play_sound(seleccionarplantas_snd,1,false)
    set_costume();
}

show_debug_message(string(get_costume(menuselectplan_obj.plant)) + " " + string(menuselectplan_obj.islock))