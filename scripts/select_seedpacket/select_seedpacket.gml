/// @description select_seedpacket
function select_seedpacket() {
	with(list_type){localselect=0}

	if list_type=menuplants_obj control_obj.pala=false
	localselect=select
	audio_play_sound(seedpack_snd,1,false)



}
