/// @description save_game()
function save_game() {
	controlmenu_obj.save_lph=3*60

	if file_exists("savedata.ini"){
	    if file_exists("savedata_backup.ini") file_delete("savedata_backup.ini")
	    file_rename("savedata.ini", "savedata_backup.ini")
	}

	ini_open("savedata.ini")

	save_achievements();

	ini_write_real("Progress","niveles",global.progress[? "niveles"])
	ini_write_real("Progress","vasebreaker",global.progress[? "vasebreaker"])
	
	for (var i = 1; i <= array_length(global.progress[? "levelhard"]); i++){
		
		ini_write_real("Progress","levelhard" + string(i),global.progress[? "levelhard"][i - 1])
	}
	/*
	ini_write_real("Progress","levelhard1",global.levelhard1)
	ini_write_real("Progress","levelhard2",global.levelhard2)
	ini_write_real("Progress","levelhard3",global.levelhard3)
	ini_write_real("Progress","levelhard4",global.levelhard4)
	*/
	ini_write_real("Progress","dinero",global.dinero)
	ini_write_real("Progress","hours_played",global.game_time)

	ini_write_real("Game_config","volevel",controlmenu_obj.volevel)
	ini_write_real("Game_config","sfxvol",controlmenu_obj.sfxvol)
	ini_write_real("Game_config","musicvol",controlmenu_obj.musicvol)
	ini_write_real("Game_config","showf3",controlmenu_obj.showf3)
	ini_write_real("Game_config","shovelpress",global.shovelpress)
	ini_write_string("Game_config","lang",global.lang)
	ini_write_real("Game_config","cursor",global.cursor)
	ini_write_real("Game_config","cursorcolor",global.cursorcolor)
	ini_write_real("Game_config","interpolation",global.interpolation)
	ini_write_real("Game_config","fullscreen",window_get_fullscreen())
	ini_write_real("Game_config","vs_log",global.vs_log)
	ini_write_real("Game_config","videoq",global.videoq)
	
	for (var i = 0; i < array_length(global.progress[? "plant"]); i++){
		ini_write_real("Shop","plant" + string(i),global.progress[? "plant"][i])
	}
	
	for (var i = 0; i < array_length(global.progress[? "costume"]); i++){
		ini_write_real("Shop","costume" + string(i),global.progress[? "costume"][i])
	}
	
	for (var i = 0; i < array_length(global.progress[? "upgrade"]); i++){
		ini_write_real("Shop","upgrade" + string(i),global.progress[? "upgrade"][i])
	}

/*	ini_write_real("Shop","plant0",global.plant0)
	ini_write_real("Shop","plant1",global.plant1)
	ini_write_real("Shop","plant2",global.plant2)
	ini_write_real("Shop","plant3",global.plant3)
	ini_write_real("Shop","plant4",global.plant4)

	ini_write_real("Shop","costume0",global.costume0)
	ini_write_real("Shop","costume1",global.costume1)
	ini_write_real("Shop","costume2",global.costume2)
	ini_write_real("Shop","costume3",global.costume3)
	ini_write_real("Shop","costume4",global.costume4)
	ini_write_real("Shop","costume5",global.costume5)
	ini_write_real("Shop","costume6",global.costume6)
	ini_write_real("Shop","costume7",global.costume7)

	ini_write_real("Shop","upgrade0",global.upgrade0)
	ini_write_real("Shop","upgrade1",global.upgrade1)
	ini_write_real("Shop","upgrade2",global.upgrade2)
	ini_write_real("Shop","upgrade3",global.upgrade3)
	ini_write_real("Shop","upgrade4",global.upgrade4)
	ini_write_real("Shop","upgrade5",global.upgrade5)
*/
	//VERSUS MODE KEYBOARD
	ini_write_real("Multi_control","z_up",global.z_up)
	ini_write_real("Multi_control","z_down",global.z_down)
	ini_write_real("Multi_control","z_left",global.z_left)
	ini_write_real("Multi_control","z_right",global.z_right)
	ini_write_real("Multi_control","z_ch1",global.z_ch1)
	ini_write_real("Multi_control","z_ch2",global.z_ch2)
	ini_write_real("Multi_control","z_place",global.z_place)

	ini_write_real("Multi_control","p_up",global.p_up)
	ini_write_real("Multi_control","p_down",global.p_down)
	ini_write_real("Multi_control","p_left",global.p_left)
	ini_write_real("Multi_control","p_right",global.p_right)
	ini_write_real("Multi_control","p_ch1",global.p_ch1)
	ini_write_real("Multi_control","p_ch2",global.p_ch2)
	ini_write_real("Multi_control","p_place",global.p_place)
	ini_write_real("Multi_control","p_remove",global.p_remove)
	ini_write_real("Multi_control","p_action",global.p_action)

	ini_write_real("Multi_control","vs_mtouch_0",global.vs_mtouch[0])
	ini_write_real("Multi_control","vs_mtouch_1",global.vs_mtouch[1])

	//GAMEJOLT

	ini_write_real("Gamejolt","saveconfig",global.sv_cnfg_user)

	if global.sv_cnfg_user{
	    ini_write_string("Gamejolt","user",global.user)
	    ini_write_string("Gamejolt","token",global.token)
	}else{
	    ini_write_string("Gamejolt","user", "")
	    ini_write_string("Gamejolt","token", "")
	}

	ini_write_string("WYD","sussy_baka","Are you gonna edit the save file? unskilled boy")
	ini_close();
}
