/// @description survival_load(file_name)
/// @param file_name
function survival_load_record(_file_name) {
    
    var _acfolder = "ac" + string(global.acc_id);
	var _route = _acfolder + "/survival/" + _file_name + ".json";
	var _txt = "";
    
    show_debug_message("LOOKIN FOR " + _route)
    show_debug_message(string(file_exists((_route))))
    
    if (!file_exists(_route)) return false;
    
	var _file = file_text_open_read(_route);
	
	//Read the json
	while (!file_text_eof(_file)) {
	    _txt += file_text_read_string(_file);
	    file_text_readln(_file);
	}
	
	file_text_close(_file);
    
    show_debug_message(string(_txt))
    
	// Json to struct
	var _survival_data = json_parse(_txt);
    
    record = struct_get_default(_survival_data, "record", 0)
    progress = struct_get_default(_survival_data, "current_progress", 0)
    version = struct_get_default(_survival_data, "version", global.survival_ver)
    
    return true
	/*
    var _acfolder = "ac" + string(global.acc_id);
	var _route = _acfolder + "/custom_levels/" + _filename;

	if file_exists(_route){
	    ini_open(_route)
    
	    version = ini_read_real("Game", "version", 0);
	    record = ini_read_real("Spawn", "record", 0);
	    progress = ini_read_real("Spawn", "current_progress", 0);
    
	    ini_close();
	}



*/
}
