global.is_customlvl = false;



// starts the file dropper extension
file_dropper_init();

text = "Dropped files:";
// for future highlight thingy
highlight = false;
has_valid_files = true;
file_is_valid = function(_path) {
	// except for ZIP files
	return string_lower(filename_ext(_path)) != ".zip";
}
file_dropper_set_default_allow(false);



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

// working directory is ruining the path.
var path = game_save_id + ("ac" + string(global.acc_id)) + "/" + "custom_levels"
var _file_name = file_find_first(path + "/*.json", fa_none);

while (_file_name != ""){
	
    ds_list_add(levels, string_replace(_file_name, ".json", ""))
    _file_name = file_find_next();
}

//dragging
drag = false;
my_pos = mouse_y;