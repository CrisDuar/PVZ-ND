/// @description plant_return_sun()
function plant_return_sun() {
	var num = 0.2
	var proceed=true

	if global.upgrade5==true num=0.4
	if wall==true and wallbroken==true{proceed=false}

	if global.upgrade4==true and plant_cost!=0 and control_obj.multijugador==false and proceed==true{
	    audio_sound_pitch(audio_play_sound(sol_snd,1,false),control_obj.sunpitch)
	    control_obj.sunpitch+=0.25
	    control_obj.soles += floor(plant_cost*num)
	    instance_create(x,y,solmove_obj)
	}



}
