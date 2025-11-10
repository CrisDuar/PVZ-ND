/// @description survival_load(file_name)
/// @param file_name
function survival_load_record(argument0) {
	var file=argument0

	if file_exists(file){
	    ini_open(file)
    
	    version = ini_read_real("Game", "version", 0);
	    record = ini_read_real("Spawn", "record", 0);
	    progress = ini_read_real("Spawn", "current_progress", 0);
    
	    ini_close();
	}




}
