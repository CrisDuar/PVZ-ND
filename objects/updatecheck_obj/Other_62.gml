if os_is_network_connected(){
    var result, evi;
    evid = ds_map_find_value(async_load, "id")
    
    switch(evid){
        case async_ini:
            result = ds_map_find_value(async_load, "result")
            file = file_text_open_write("updatecheck.ini")
            file_text_write_string(file,string(result));
            file_text_close(file)
        break
    }
}

