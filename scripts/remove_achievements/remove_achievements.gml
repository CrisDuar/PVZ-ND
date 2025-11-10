function remove_achievements() {
	//remove_achievements()
	//save_game
	//load_game
    
	for (var i = 0; i < global.num_logros; i++){
	    global.logros[# 0, i] = false;
	    ini_write_real("Achievement", "ac" + string(i), false)
	}



}
