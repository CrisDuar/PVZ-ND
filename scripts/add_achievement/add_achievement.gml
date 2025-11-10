/// @description add_achievement(ID, nameEN, nameES, descEN, descES, iconID, type)
/// @param ID
/// @param  nameEN
/// @param  nameES
/// @param  descEN
/// @param  descES
/// @param  iconID
/// @param  type
function add_achievement(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {

	/*
	n achievement ID
	[# 0, n] achievement status
	[# 1, n] achievement name EN
	[# 2, n] achievement name ES
	[# 3, n] achievement desc EN
	[# 4, n] achievement desc ES
	[# 5, n] achievement icon
	[# 6, n] achievement type 
	    [0] normal
	    [1] Hard
	    [2] secret
	    [3] just notification
	*/

	var _id = argument0
	var _name_en = argument1
	var _name_es = argument2
	var _desc_en = argument3
	var _desc_es = argument4
	var _icon = argument5
	var _type = argument6

	if (_id <= ds_grid_height(global.logros) - 1 and _id >= 0){
    
	    //verificar logro
	    var _state = false;
	    var _check = 0;
    
	    if file_exists("savedata.ini"){
	        ini_open("savedata.ini")
        
	        if ini_section_exists("Achievement"){
            
	            _check = ini_read_real("Achievement", "ac" + string(_id), 0);
            
	            show_debug_message(string(_id) + ": " + string(_check) + " %7 = " + string(_check%7))
            
	            if (_check % 7 == 0 and _check != 0) _state = true;
	        }
	        ini_close();
	    }

	    global.logros[# 0, _id] = _state
	    global.logros[# 1, _id] = _name_en
	    global.logros[# 2, _id] = _name_es
	    global.logros[# 3, _id] = _desc_en
	    global.logros[# 4, _id] = _desc_es
	    global.logros[# 5, _id] = _icon
	    global.logros[# 6, _id] = _type
    
	    if (_type != 3){
	        global.real_logros++
	        if (_state == true) global.unlock_logros++
	    }
    

	}else{
	    show_debug_message("El logro ID" + string(_id) + " no existe.")
	}
}
