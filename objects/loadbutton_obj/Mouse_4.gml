image_xscale=0.98
image_yscale=0.98
audio_play_sound(selectstone1_snd,1,false)

//lOAD MAIN DATA
if http_data[0,1] != "0"{
    if file_exists("savedata.ini") file_delete("savedata.ini")
    var file = file_text_open_write("savedata.ini");
    file_text_write_string(file, http_data[0,1]);
    file_text_close(file);  
}

if http_data[1,0] != "0"{
    if file_exists("player_surv.ini") file_delete("player_surv.ini")
    var file = file_text_open_write("player_surv.ini");
    file_text_write_string(file, http_data[1,1]);
    file_text_close(file);
    
}

if http_data[2,1] != "0"{
    if file_exists("pool_surv.ini") file_delete("pool_surv.ini")
    var file = file_text_open_write("pool_surv.ini");
    file_text_write_string(file, http_data[2,1]);
    file_text_close(file);
}

if http_data[3,1] != "0"{
    if file_exists("weather_surv.ini") file_delete("weather_surv.ini")
    var file = file_text_open_write("weather_surv.ini");
    file_text_write_string(file, http_data[3,1]);
    file_text_close(file);
}


if http_data[0,1]!= "0"
or http_data[1,1]!= "0"
or http_data[2,1]!= "0"
or http_data[3,1]!= "0"{
    audio_stop_all();
    room_restart();
    instance_create(0,0,fadeout_obj)
    instance_create(544,320,spacebearlogo_obj)
    load_game("savedata.ini");
    
    with(logros_obj){
        event_perform(ev_create, 0)
        
    }
}

