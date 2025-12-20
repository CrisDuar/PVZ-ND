if (global.popup_open == 0){
	audio_play_sound(seleccionarplantas_snd,1,false)
	
	var _warn = create_warning(
		"¿Quieres BORRAR tu archivo de guardado?",
		"Are you sure you want to DELETE your save?",
		0,
		true
	)
	
	with(_warn){
		
		instance = other.id;
		variable = "do_delete"
	}
	
	//instance_create(544,320,deletewindow_obj)
}