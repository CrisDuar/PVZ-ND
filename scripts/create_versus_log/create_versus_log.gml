/// @description create_versus_log(winner)
/// @param winner
function create_versus_log(argument0) {

	var winner = argument0;


	var _map, _mode, _mowers, _targets, _max_target;
	var _sec, _min, _hour, _utc;

	_hour = string(date_get_hour(date_current_datetime()))
	_min = string(date_get_minute(date_current_datetime()))
	_sec = string(date_get_second(date_current_datetime()))
	_utc = ""

	if (sign(controlmenu_obj.utc) >= 0) _utc = "+"

	if(string_length(_min) < 2) { _min = "0"+_min; }
	if(string_length(_sec) < 2) { _sec = "0"+_sec; }

	switch(global.vsgamemode){
	    case 0: _mode="Quick play"; break
	    case 1: _mode="Custom play"; break
	    case 2: _mode="Conveyor"; break
	}

	_mowers = instance_number(globalpod_obj)
	_targets = instance_number(zombiediana_obj)
	_max_target = 5

	switch(global.vsmap){
	    case 0: 
	        _map="Day"
	        if (global.vsgamemode == 2){
	            global.vs_log_plants = "Peashooter, Wall-Nut, Potatomine, Snow Pea, Repeater, Bowling Bulb, Garlic Drone, Cherry Bomb"
	            global.vs_log_zombies = "Zombie, Zom-Gravestone, Paper Thrower Zombie, Pole Vaulting Zombie, Conehead Zombie, Buckethead Zombie, Headbox Zombie, Zombie Statue, Flag Zombie"
	        }
	    break
    
	    case 1:
	        _map="Sunset"
	        if (global.vsgamemode == 2){
	            global.vs_log_plants = "Peashooter, Wall-Nut, Potatomine, Snow Pea, Repeater, Bowling Bulb, Garlic Drone, Cherry Bomb"
	            global.vs_log_zombies = "Zombie, Zom-Gravestone, Paper Thrower Zombie, Pole Vaulting Zombie, Conehead Zombie, Buckethead Zombie, Headbox Zombie, Zombie Statue, Flag Zombie"
	        }
	    break
    
	    case 2:
	        _map="Night";
	        if (global.vsgamemode == 2){
	            global.vs_log_plants = "Grave Buster, Puff-Shroom, Scaredy-Shroom, Iceberg Lettuce, Wall-Nut, Pea-Nut, Fume-Shroom, Ice-Shroom"
	            global.vs_log_zombies = "Zombie, Imp, Skeleton Zombie, All-Star Zombie, Torch Zombie, Zom-Gravestone, Conehead Zombie, Buckethead Zombie, Headbox Zombie, Flag Zombie"
	        }
	    break
    
	    case 3:
	        _map="Pool";
	        _max_target = 6
	        if (global.vsgamemode == 2){
	            global.vs_log_plants = "Tangle Kelp, Lily Pad, Rotobaga, Peashooter, Tall-Nut, Guacodile, Serious Watermelon, Narcissus, Threepeater, Jalapeno, Cherry Bomb"
	            global.vs_log_zombies = "Ducky Tube Zombie, Snorkel Zombie, Icehead Zombie, Trashcan Zombie, Zomboni, Zom-Gravestone, Conehead Zombie, Buckethead Zombie, Headbox Zombie, Flag Zombie"
	        }
	    break
    
	    case 4: 
	        _map="Fog";
	        if (global.vsgamemode == 2){
	            global.vs_log_plants = "Plantern, Coffee Bean, Blover, Scaredy-Shroom, Magnet-Shroom, Toxic-Shroom, Zapear, Morpho-Shroom, Levicotton, Cherry Bomb, Ghost Pepper, Lightning Reed"
	            global.vs_log_zombies = "Zombie, Molotov Zombie, Zombie Ghost, Coffin Zombie, Magician Zombie, Zombie Doctor, Jack-in-the-Box Zombie, Zom-Gravestone, Conehead Zombie, Buckethead Zombie, Headbox Zombie, Flag Zombie"
	        }
	    break
    
	    case 5:
	        _map="Dusk";
	        if (global.vsgamemode == 2){
	            global.vs_log_plants = "Plantern, Coffee Bean, Blover, Scaredy-Shroom, Magnet-Shroom, Toxic-Shroom, Zapear, Morpho-Shroom, Levicotton, Cherry Bomb, Ghost Pepper, Lightning Reed"
	            global.vs_log_zombies = "Zombie, Molotov Zombie, Zombie Ghost, Coffin Zombie, Magician Zombie, Zombie Doctor, Jack-in-the-Box Zombie, Zom-Gravestone, Conehead Zombie, Buckethead Zombie, Headbox Zombie, Flag Zombie"
	        }
	    break
	}

	if file_exists(working_directory + "\\versus" + "\\log_test.csv"){

	    if !directory_exists("versus"){
	        directory_create("versus");
	    }

	    var _str = file_get_text_content_filename(working_directory + "\\versus" + "\\log_test.csv")
    
	    file_delete("log_test.csv")
    
	    var temp = ds_grid_create(10,1);
	    //x3, y1
	    temp[# 0, 0] = date_date_string(date_current_datetime()) + " " + _hour + ":" + _min + ":" + _sec + " (UTC" + _utc + string(controlmenu_obj.utc) + ")"
	    temp[# 1, 0] = string(GM_version)
	    temp[# 2, 0] = global.vs_log_plants;
	    temp[# 3, 0] = global.vs_log_zombies;
	    if (winner) temp[# 4, 0] = "Zombies" else temp[# 4, 0] = "Plants" 
    
	    if global.vssudden==true{
	        if (sudden_obj.suddendeath) {temp[# 5, 0] = "Yes"}else{temp[# 5, 0] = "No"}
	    }else{temp[# 5, 0] = "Disabled"}
    
	    temp[# 6, 0] = _mode;
	    temp[# 7, 0] = _map;
    
	    temp[# 8, 0] = string(_mowers) + " of " + string(_max_target); //LAWNMOWERS
	    temp[# 9, 0] = string(_targets) + " of " + string(_max_target); //TARGETS
    
	    var filecsv = file_text_open_write(working_directory + "\\versus" + "\\log_test.csv");
    
	    file_text_write_string(filecsv, _str + grid_to_csv_string(temp));
	    file_text_close(filecsv);
    
	    //var temp = ds_grid_create(3,1);

	}else{

	    var temp = ds_grid_create(10,2);
	    //x3, y1
	    temp[# 0, 0] = "Date";
	    temp[# 1, 0] = "Version"; //VERSION
	    temp[# 2, 0] = "Plants";
	    temp[# 3, 0] = "Zombies";
	    temp[# 4, 0] = "Winner";
	    temp[# 5, 0] = "Sudden Death?";
	    temp[# 6, 0] = "Game mode";
	    temp[# 7, 0] = "Map";
	    temp[# 8, 0] = "Lawnmowers"; //LAWNMOWERS
	    temp[# 9, 0] = "Targets"; //TARGETS
    
	    temp[# 0, 1] = date_date_string(date_current_datetime()) + " " + _hour + ":" + _min + ":" + _sec + " (UTC" + _utc + string(controlmenu_obj.utc) + ")"
	    temp[# 1, 1] = string(GM_version)
	    temp[# 2, 1] = global.vs_log_plants;
	    temp[# 3, 1] = global.vs_log_zombies;
	    if (winner) temp[# 4, 1] = "Zombies" else temp[# 4, 1] = "Plants" 
    
	    if global.vssudden==true{
	        if (sudden_obj.suddendeath) {temp[# 5, 1] = "Yes"}else{temp[# 5, 1] = "No"}
	    }else{temp[# 5, 1] = "Disabled"}
    
	    temp[# 6, 1] = _mode;
	    temp[# 7, 1] = _map;
    
	    temp[# 8, 1] = string(_mowers) + " of " + string(_max_target); //LAWNMOWERS
	    temp[# 9, 1] = string(_targets) + " of " + string(_max_target); //TARGETS
    
	    if !directory_exists("versus"){
	        directory_create("versus");
	    }
    
	    var filecsv = file_text_open_write(working_directory + "\\versus" + "\\log_test.csv");
    
	    file_text_write_string(filecsv, grid_to_csv_string(temp));
	    file_text_close(filecsv);

	}
	/*
	1. Fecha + utc
	2. Plantas (por defecto en conveyor)
	3. Zombies (por defecto en conveyor)
	4. Ganador
	5. SD?
	6. modo
	7. mapa




/* end create_versus_log */
}
