function load_level_json(_file_name){
	var _ruta = "levels/" + global.load_route + "/" + _file_name + ".json"
	var _txt = "";

	var _file = file_text_open_read(_ruta);
	
	//Read the json
	while (!file_text_eof(_file)) {
	    _txt += file_text_read_string(_file);
	    file_text_readln(_file);
	}
	
	file_text_close(_file);

	// Json to struct
	var _json = json_parse(_txt);

	//Read the struct
	return _json;
}