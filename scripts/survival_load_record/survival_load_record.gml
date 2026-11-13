/// @description survival_load(file_name)
/// @param file_name
function survival_load_record(_filename) {
	
    var _acfolder = "ac" + string(global.acc_id);
	var _route = _acfolder + "/custom_levels/" + _filename;

	if file_exists(_route){
	    ini_open(_route)
    
	    version = ini_read_real("Game", "version", 0);
	    record = ini_read_real("Spawn", "record", 0);
	    progress = ini_read_real("Spawn", "current_progress", 0);
    
	    ini_close();
	}




}
