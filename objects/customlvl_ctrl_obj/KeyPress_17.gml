ds_list_clear(levels);
var _file_name = file_find_first(dir + "/*.json", fa_none);

while (_file_name != ""){
	
    ds_list_add(levels, string_replace(_file_name, ".json", ""))
    _file_name = file_find_next();
}