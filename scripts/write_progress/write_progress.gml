function write_progress(_key, _value){
	
	var _key_ltr = string_letters(_key);
	
	if ds_map_exists(global.progress, _key_ltr){
		
	    if (is_array(global.progress[? _key_ltr])){
			
			var _key_num = real(string_digits(_key))
			global.progress[? _key_ltr][_key_num]  = _value;
			
		}else{
			
			global.progress[? _key_ltr] = _value;
		}
	}

}