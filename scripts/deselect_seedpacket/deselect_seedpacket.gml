/// @description deselect_seedpacket(sfx [true by default])
/// @param sfx [true by default]
function deselect_seedpacket() {

	var sfx = true
	if(argument_count > 0) {sfx = argument[0]}

	localselect=0;
	if list_type=menuplants_obj{
	    control_obj.seleccionado=0
	}else{
	    control_obj.zomseleccionado=0
	}

	if (sfx) audio_play_sound(cancelseedpack_snd,1,false);



}
