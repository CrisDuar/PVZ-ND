/// @description survival_get_record(file_name)
/// @param file_name
function survival_get_record(argument0) {
	var file=argument0
	var _record = 0;

	if file_exists(file){
	    ini_open(file)
    
	    _record = ini_read_real("Spawn", "record", 0);
    
	    ini_close();
	}

	return _record;



}
