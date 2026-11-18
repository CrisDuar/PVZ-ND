var _type = async_load[?"event_type"];
var _tmp = json_decode(json_encode(async_load));
ds_map_delete(_tmp, "event_type");
show_debug_message(string(_type) + ": " + json_encode(_tmp));
ds_map_destroy(_tmp);

switch (async_load[?"event_type"]) {
	case "file_drag_over":
		var _x = async_load[?"x"] - window_get_x();
		var _y = async_load[?"y"] - window_get_y();
		file_dropper_set_allow(has_valid_files && point_in_rectangle(_x, _y,
			0, 0, window_get_width(), window_get_height()
		));
		break;
	case "file_drop":
		var _path = async_load[?"filename"];
		var filename = filename_name(_path)
		var destination = game_save_id + ("ac" + string(global.acc_id)) + "/" + "custom_levels/" + filename;
		
		// creates a new copy of the dropped file
		if (file_is_valid(_path)) {
            
            if (file_exists(destination)){
                
                destination = string_trim(destination, [".json"])
                
                var i = 1;
                while (file_exists($"{destination} ({i}).json")) i++
                    
                destination += $" ({i}).json"
            }
            
			file_copy(_path, destination)
		}
		highlight = false;
		
		// refresh
		ds_list_clear(levels);
		var path = game_save_id + ("ac" + string(global.acc_id)) + "/" + "custom_levels"
		var _file_name = file_find_first(path + "/*.json", fa_none);
		show_debug_message(path)
		show_debug_message(_file_name)

		while (_file_name != ""){
	
		    ds_list_add(levels, string_replace(_file_name, ".json", ""))
		    _file_name = file_find_next();
		} 
        
    break;

	case "file_drag_enter_start":
		has_valid_files = false;
		break;
    
	case "file_drag_enter_file":
		var _path = async_load[?"filename"];
		if (file_is_valid(_path)) {
			has_valid_files = true;
		}
		break;
		
		// highlight related
	case "file_drag_enter":
		highlight = true;
		break;
	case "file_drag_leave":
		highlight = false;
		break;
	case "file_drop_end":
		highlight = false;
		break;
}