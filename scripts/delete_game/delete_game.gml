/// @description delete_game()
function delete_game() {
	if file_exists("savedata.ini"){file_delete("savedata.ini");}

	ini_open("savedata.ini")

	remove_achievements()

	ini_write_real("Progress","niveles",0)
	ini_write_real("Progress","vasebreaker",0)
	ini_write_real("Progress","levelhard1",0)
	ini_write_real("Progress","levelhard2",0)
	ini_write_real("Progress","levelhard3",0)
	ini_write_real("Progress","levelhard4",0)
	ini_write_real("Progress","dinero",0)
	ini_write_real("Progress","hours_played",0)

	ini_write_real("Game_config","volevel",25)
	ini_write_real("Game_config","sfxvol",100)
	ini_write_real("Game_config","musicvol",100)
	ini_write_real("Game_config","showf3",0)
	ini_write_real("Game_config","shovelpress",0)
	ini_write_string("Game_config","lang","en")
	ini_write_real("Game_config","cursor",0)
	ini_write_real("Game_config","cursorcolor",0)
	ini_write_real("Game_config","interpolation",1)
	ini_write_real("Game_config","fullscreen",0)
	ini_write_real("Game_config","vs_log",0)

	ini_write_real("Shop","plant0",0)
	ini_write_real("Shop","plant1",0)
	ini_write_real("Shop","plant2",0)
	ini_write_real("Shop","plant3",0)
	ini_write_real("Shop","plant4",0)

	ini_write_real("Shop","costume0",0)
	ini_write_real("Shop","costume1",0)
	ini_write_real("Shop","costume2",0)
	ini_write_real("Shop","costume4",0)
	ini_write_real("Shop","costume4",0)

	ini_write_real("Shop","upgrade0",0)
	ini_write_real("Shop","upgrade1",0)
	ini_write_real("Shop","upgrade2",0)
	ini_write_real("Shop","upgrade3",0)
	ini_write_real("Shop","upgrade4",0)
	ini_write_real("Shop","upgrade5",0)

	//VERSUS MODE KEYBOARD
    
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

	//VERSUS MODE KEYBOARD
	ini_write_real("Multi_control","z_up",vk_up)
	ini_write_real("Multi_control","z_down",vk_down)
	ini_write_real("Multi_control","z_left",vk_left)
	ini_write_real("Multi_control","z_right",vk_right)
	ini_write_real("Multi_control","z_ch1",ord("B"))
	ini_write_real("Multi_control","z_ch2",ord("M"))
	ini_write_real("Multi_control","z_place",ord("N"))

	ini_write_real("Multi_control","p_up",ord("W"))
	ini_write_real("Multi_control","p_down",ord("S"))
	ini_write_real("Multi_control","p_left",ord("A"))
	ini_write_real("Multi_control","p_right",ord("D"))
	ini_write_real("Multi_control","p_ch1",ord("Q"))
	ini_write_real("Multi_control","p_ch2",ord("E"))
	ini_write_real("Multi_control","p_place",ord("F"))
	ini_write_real("Multi_control","p_remove",ord("R"))
	ini_write_real("Multi_control","p_action",vk_shift)

	var default_touch = 0
	if (os_type == os_android) default_touch = 1

	ini_write_real("Multi_control","vs_mtouch_0",default_touch)
	ini_write_real("Multi_control","vs_mtouch_1",default_touch)

	//Gamejolt
	ini_write_real("Gamejolt","saveconfig",global.sv_cnfg_user)

	if (global.sv_cnfg_user){
	    ini_write_string("Gamejolt","user",global.user)
	    ini_write_string("Gamejolt","token",global.token)
	}else{
	    ini_write_string("Gamejolt","user", "")
	    ini_write_string("Gamejolt","token", "")
	}

	ini_write_string("WYD","sussy_baka","Are you gonna edit the save file? unskilled boy")
	ini_close();

	if file_exists("player_surv.ini") file_delete("player_surv.ini")
	if file_exists("pool_surv.ini") file_delete("pool_surv.ini")
	if file_exists("weather_surv.ini") file_delete("weather_surv.ini")

	load_game("savedata.ini");

	game_restart();

	if (global.user!="" and global.token!="" and os_is_network_connected()){
	    apicontrol_obj.login = gj_user_login(global.user,global.token)
	}



}
