if (global.popup_open == 0){
	audio_play_sound(seleccionarplantas_snd,1,false)
	
	var _warn = create_warning(
		"¿Quieres salir del juego?",
		"Are you sure you want to quit the game?",
		0,
		false
	)
	
	with(_warn){
		
		instance = other.id;
		variable = "do_exit"
	}
	
	//instance_create(544,320,quitwindow_obj)
}