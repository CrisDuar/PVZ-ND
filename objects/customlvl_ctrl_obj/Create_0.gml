global.is_customlvl = false;

sel = -1;

var _acfolder = "ac" + string(global.acc_id);
dir = working_directory + _acfolder + "/custom_levels"

if (!directory_exists(dir)){
	
	directory_create(dir);
}

xx = 30;
yy = 100;
dyy = yy;
sep = 30;

//Get levels
levels = ds_list_create();
var _file_name = file_find_first(dir + "/*.json", fa_none);

while (_file_name != ""){
	
    ds_list_add(levels, string_replace(_file_name, ".json", ""))
    _file_name = file_find_next();
}

//dragging
drag = false;
my_pos = mouse_y;