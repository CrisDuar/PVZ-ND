// Reload levels

ds_list_clear(levels);
var path = game_save_id + ("ac" + string(global.acc_id)) + "/" + "custom_levels"
var _file_name = file_find_first(path + "/*.json", fa_none);
show_debug_message(path)
show_debug_message(_file_name)

while (_file_name != ""){
	
    ds_list_add(levels, string_replace(_file_name, ".json", ""))
    _file_name = file_find_next();
}