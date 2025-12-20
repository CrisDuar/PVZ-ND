/// @description load_game(savefile name)
/// @param savefile name
function load_game(argument0) {
	//savedata.ini
	var save = argument0
	
	ini_open(save)
		
	var save_version = ini_read_real("Game_config","save_version", 0);
		
	global.progress[? "niveles"] = ini_read_real("Progress", "niveles", 0);
	global.vasebreaker = ini_read_real("Progress", "vasebreaker", 0);
		
	//To avoid losing data
	if (save_version < 1){
		//OLD VERSION
		for (var i = 1; i <= array_length(global.progress[? "levelhard"]); i++){
			global.progress[? "levelhard"][i - 1] = ini_read_real("Progress", "levelhard" + string(i), 0);
		}
	}else{
		//NEW VERSION
		for (var i = 0; i < array_length(global.progress[? "levelhard"]); i++){
			global.progress[? "levelhard"][i] = ini_read_real("Progress", "levelhard" + string(i), 0);
		}	
	}
	/*
	global.levelhard1 = ini_read_real("Progress", "levelhard1", 0);
	global.levelhard2 = ini_read_real("Progress", "levelhard2", 0);
	global.levelhard3 = ini_read_real("Progress", "levelhard3", 0);
	global.levelhard4 = ini_read_real("Progress", "levelhard4", 0);
	*/
	global.dinero = ini_read_real("Progress", "dinero", 0 );
	global.game_time = ini_read_real("Progress", "hours_played", 0 );
    
	controlmenu_obj.volevel = ini_read_real("Game_config", "volevel", 25 );
	controlmenu_obj.sfxvol = ini_read_real("Game_config", "sfxvol", 25 );
	controlmenu_obj.musicvol = ini_read_real("Game_config", "musicvol", 25 );
	controlmenu_obj.showf3 = ini_read_real("Game_config", "showf3", 0 );
	global.shovelpress = ini_read_real("Game_config", "shovelpress", 0 );
	global.lang = ini_read_string("Game_config", "lang", "en" );
	global.cursor = ini_read_real("Game_config", "cursor", 0 );
	global.cursorcolor = ini_read_real("Game_config", "cursorcolor", 0 );
	global.interpolation = ini_read_real("Game_config", "interpolation", 1 );
	global.vs_log = ini_read_real("Game_config", "vs_log", 0 );
	global.videoq = ini_read_real("Game_config", "videoq", 2 );
		
	for (var i = 0; i < array_length(global.progress[? "plant"]); i++){	
		global.progress[? "plant"][i] = ini_read_real("Shop", "plant" + string(i), 0 );
	}
	
	for (var i = 0; i < array_length(global.progress[? "costume"]); i++){	
		global.progress[? "costume"][i] = ini_read_real("Shop", "costume" + string(i), 0 );
	}
	
	for (var i = 0; i < array_length(global.progress[? "upgrade"]); i++){
		global.progress[? "upgrade"][i] = ini_read_real("Shop", "upgrade" + string(i), 0 );
	}
	/*
	global.plant0 = ini_read_real("Shop", "plant0", 0 );
	global.plant1 = ini_read_real("Shop", "plant1", 0 );
	global.plant2 = ini_read_real("Shop", "plant2", 0 );
	global.plant3 = ini_read_real("Shop", "plant3", 0 );
	global.plant4 = ini_read_real("Shop", "plant4", 0 );
    
	global.costume0 = ini_read_real("Shop", "costume0", 0 );
	global.costume1 = ini_read_real("Shop", "costume1", 0 );
	global.costume2 = ini_read_real("Shop", "costume2", 0 );
	global.costume3 = ini_read_real("Shop", "costume3", 0 );
	global.costume4 = ini_read_real("Shop", "costume4", 0 );
	global.costume5 = ini_read_real("Shop", "costume5", 0 );
	global.costume6 = ini_read_real("Shop", "costume6", 0 );
	global.costume7 = ini_read_real("Shop", "costume7", 0 );
    
	global.upgrade0 = ini_read_real("Shop", "upgrade0", 0 );
	global.upgrade1 = ini_read_real("Shop", "upgrade1", 0 );
	global.upgrade2 = ini_read_real("Shop", "upgrade2", 0 );
	global.upgrade3 = ini_read_real("Shop", "upgrade3", 0 );
	global.upgrade4 = ini_read_real("Shop", "upgrade4", 0 );
	global.upgrade5 = ini_read_real("Shop", "upgrade5", 0 );
*/
	//VERSUS MODE KEYBOARD
    
	global.z_up = ini_read_real("Multi_control", "z_up", vk_up);
	global.z_down = ini_read_real("Multi_control", "z_down", vk_down);
	global.z_left = ini_read_real("Multi_control", "z_left", vk_left);
	global.z_right = ini_read_real("Multi_control", "z_right", vk_right);
	global.z_ch1 = ini_read_real("Multi_control", "z_ch1", ord("B"));
	global.z_ch2 = ini_read_real("Multi_control", "z_ch2", ord("M"));
	global.z_place = ini_read_real("Multi_control", "z_place", ord("N"));
    
	global.p_up = ini_read_real("Multi_control", "p_up", ord("W"));
	global.p_down = ini_read_real("Multi_control", "p_down", ord("S"));
	global.p_left = ini_read_real("Multi_control", "p_left", ord("A"));
	global.p_right = ini_read_real("Multi_control", "p_right", ord("D"));
	global.p_ch1 = ini_read_real("Multi_control", "p_ch1", ord("Q"));
	global.p_ch2 = ini_read_real("Multi_control", "p_ch2", ord("E"));
	global.p_place = ini_read_real("Multi_control", "p_place", ord("F"));
	global.p_remove = ini_read_real("Multi_control", "p_remove", ord("R"));
	global.p_action = ini_read_real("Multi_control", "p_action", vk_shift);
    
	var default_touch = 0
	if (os_type == os_android) default_touch = 1
    
	global.vs_mtouch[0] = ini_read_real("Multi_control", "vs_mtouch_0", default_touch);
	global.vs_mtouch[1] = ini_read_real("Multi_control", "vs_mtouch_1", default_touch);
    
	//GAMEJOLT
    
	global.sv_cnfg_user = ini_read_real("Gamejolt", "saveconfig", 0);
    
	if global.sv_cnfg_user{
	    global.user = ini_read_string("Gamejolt", "user", "");
	    global.token = ini_read_string("Gamejolt", "token", "");
	}
    
	ini_close()
}
