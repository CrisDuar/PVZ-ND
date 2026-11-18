global.is_customlvl = false;

// starts the file dropper extension
file_dropper_init();

text = "Dropped files:";
// for future highlight thingy
highlight = false;
has_valid_files = true;
file_is_valid = function(_path) {
	// except for ZIP files
	return string_lower(filename_ext(_path)) == ".json";
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

reload_levels = function(){
    ds_list_clear(levels);
    var path = game_save_id + ("ac" + string(global.acc_id)) + "/" + "custom_levels"
    var _file_name = file_find_first(path + "/*.json", fa_none);
    show_debug_message(path)
    show_debug_message(_file_name)
    
    while (_file_name != ""){
    	
        ds_list_add(levels, string_replace(_file_name, ".json", ""))
        _file_name = file_find_next();
    }
}

//dragging
drag = false;
my_pos = mouse_y;

#region Level GUI

show_menu = false;
level_info = undefined;
level_file = undefined;
rm_lvl = false;

//Buttons
btns = ds_list_create();
btns_spr = ds_list_create();

cam = view_camera[0];
_x = camera_get_view_width(cam)/2
_y = camera_get_view_height(cam)/2
_gy = 3;
_gx = 2.5;

ds_list_add(btns, add_button(_x, _y - 78*_gy + 400, 40, 40))
ds_list_add(btns_spr, add_button_graph(btn_add_spr, 0, 1, 2, 3))

ds_list_add(btns, add_button(_x - 50, _y - 78*_gy + 400, 40, 40))
ds_list_add(btns_spr, add_button_graph(btn_delete_spr, 0, 1, 2, 3))

ds_list_add(btns, add_button(_x + 50, _y - 78*_gy + 400, 40, 40))
ds_list_add(btns_spr, add_button_graph(btn_exit_spr, 0, 1, 2, 3))

open_level = function(_name){
    if (global.popup_open == 0 || show_menu == false){ 
        global.popup_open++;
        show_menu = true;
    }
    
    var _path = game_save_id + ("ac" + string(global.acc_id)) + "/" + "custom_levels/"
    
    level_file = _name;
    level_info = load_level_json(_name, _path)
}

delete_level = function (_name){
    
    var _path = game_save_id + ("ac" + string(global.acc_id)) + "/" + "custom_levels/" + _name + ".json"
    level_info = undefined;
    level_file = undefined;
    
    show_debug_message("deleting")
    show_debug_message(_path)
    
    if (file_exists(_path)) file_delete(_path)
}

#endregion