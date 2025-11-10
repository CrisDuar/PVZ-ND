function save_achievements() {
	//save_achievements()
	//save_game
	//load_game
    
	for (var i = 0; i < global.num_logros; i++){
    
	    ini_write_real("Achievement", "ac" + string(i), global.logros[# 0, i] * 7 * (irandom_range(17, 53)))
	}



}
