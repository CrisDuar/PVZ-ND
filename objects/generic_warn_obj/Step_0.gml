if (global.popup_open == level){
	
	if (init){
		//Danger
		danger_alpha += 0.2; 
	
		//Confirmation
		var _rslt = false;
		var _txt_rslt = text_def;
		var _close = false;
			
	
		if (mouse_check_button_released(mb_left)){
			
			//True
			if (check_button(btn_bounds[| 0])){
				audio_play_sound(selectstone1_snd, 1, false);
				_close = true;
				_rslt = true;
			
				if (type == 1){
					_txt_rslt = textbar_id.str;
				
					if (string_length(_txt_rslt) <= 0){
						audio_play_sound(errorseed_snd, 1, false);
						_close = false;
					}
				}
			}
		
			//False
			if (can_cancel){
				if (check_button(btn_bounds[| 1])){
					audio_play_sound(selectstone1_snd, 1, false);
					_close = true;
				}
			}
		}
	
		if (_close){
			if (is_global){
				variable_global_set(variable, _rslt);
				if (type == 1) variable_global_set(txt_variable, _txt_rslt);
			}else{
			
				variable_instance_set(instance, variable, _rslt);
				if (type == 1) variable_instance_set(instance, txt_variable, _txt_rslt);
			}
				
			event_user(0);
		}
	}
}else{
	danger_alpha -= 0.2; 
	
	if (instance_exists(textbar_id)) textbar_id.selected = false;
}