audio_stop_all();
audio_play_sound(seedpack_snd,1,false)

if (update_progress){
	if (read_progress(prizevar) < lvl) write_progress(prizevar, lvl);
	
	if (sprite_index != bolsa_monedas_spr){
	    audio_play_sound(snd,1,false)
	    global.price = prizevar
	    global.nota = lvl
	}else{
		audio_play_sound(newplant_snd,1,false)
	    global.dinero+=money
	}
}

//Versus mode and battles
if (control_obj.multijugador){
	
	create_versus_log(global.zombieswin);
	
}else if room==iplant_rm{
	
    if (global.battle_diff == 2) logros_obj.pmind = true;
	
}else if room==izombie_rm{
	
	if (global.battle_diff == 2) logros_obj.zmind = true;
}


with(instance_create_depth(x, y, -9100, newplantcenter_obj)){
    sprite_index=other.sprite_index
    plantroom=other.plantroom
	
	switch(other.snd){
		default: time = 5 break;
		case finalprize_snd: time = 7 break;
	}
}

instance_destroy();