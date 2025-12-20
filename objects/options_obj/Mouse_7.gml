if (global.popup_open == 0){
	audio_play_sound(seleccionarplantas_snd,1,false)
	//instance_create(544,320,optionsmenu_obj)
	instance_create(x,y,fadeout_obj)
	__view_set( e__VW.XView, 0, 1088 )
}