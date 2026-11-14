/// @description survival_newgame(file_name)
/// @param file_name
function survival_newgame(_file_name) {
    
    var _acfolder = "ac" + string(global.acc_id);
	var _route = _acfolder + "/survival/" + _file_name + ".json";
	var _txt = "";
    
    if (!file_exists(_route)) return false;
    
	var _file = file_text_open_read(_route);
	
	//Read the json
	while (!file_text_eof(_file)) {
	    _txt += file_text_read_string(_file);
	    file_text_readln(_file);
	}
	
	file_text_close(_file);
    file_delete(_file)
    
	// Json to struct
	var _survival_data = json_parse(_txt);
    
    var _record = struct_get_default(_survival_data, "record", 0)
    var _version = struct_get_default(_survival_data, "version", global.survival_ver)
    
    var _data = {
        version: _version,
        record: _record,
    }
    
    var _data_json = json_stringify(_data, true);
    
    _file = file_text_open_write(_route);
    file_text_write_string(_file, _data_json);
    file_text_close(_file);
    
    return true
    
    /*
	//var file=argument0
	var record_surv=0

	if file_exists(file){
	    ini_open(file)
	    record_surv=ini_read_real("Spawn", "record", 0 );
	    ini_close();
	file_delete(file);
	}

	ini_open(file)
	ini_write_real("Spawn","record",record_surv)
	ini_write_real("Game","version", global.survival_ver)
	ini_close();

*/

}
