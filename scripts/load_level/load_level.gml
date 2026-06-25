function load_level(){
	
	var _route = "levels/" + global.load_route + "/";
	
	var _lvl_str = load_level_json(global.load_level, _route);
	var _obj_str = struct_get_default(_lvl_str, "objects", []);
	
	load_level_struct(_lvl_str);
	load_objects_id_struct(_obj_str);
	/*
	if (file_exists(_route + global.load_level + "_obj.json")){
		
		var _obj_str = load_level_json(global.load_level + "_obj", _route);
		show_debug_message("STRUCT");
		show_debug_message(_obj_str);
		load_objects_struct(_obj_str);
	}*/
}