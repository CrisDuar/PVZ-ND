function load_custom_level(_name){
	
	var _acfolder = "ac" + string(global.acc_id);
	
	var _route = _acfolder + "/custom_levels/";
	
	var _lvl_str = load_level_json(global.load_level, _route);
	var _obj_str = struct_get_default(_lvl_str, "objects", {});
	
	load_level_struct(_lvl_str);
	load_objects_struct(_obj_str);
	
	with(zombispawn_obj){
		lvl_type = -1;
		lvl_id = -1;
	
		//Prize
		prizevar = ""
		lvl = -2
		money = 0;
		plantroom = customlevels_rm;
	}
}