if (menuselectplan_obj.unit_ban){
	
	if (global.vs_mtouch[!type]){
		if (visible and menuselectplan_obj.zomplant=type){
			
			if (!cant_ban){
				menuselectplan_obj.zomplant = !menuselectplan_obj.zomplant;
				ban = true;
				menuselectplan_obj.bans++;
				audio_play_sound(sunless_snd, 1, false);
			}else{
				audio_play_sound(errorseed_snd, 1, false);	
			}
		}
	}
}else{
	if control_obj.multijugador==false or global.vs_mtouch[type]{
	
		press_globalselect(-1);
	}
}

