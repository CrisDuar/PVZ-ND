if (global.popup_open == 0 and visible){
	audio_stop_all();
	room_goto(almanacindex_rm);
	audio_play_sound(aceptoption_snd,1,false);
	image_yscale=1
	image_xscale=1
}

