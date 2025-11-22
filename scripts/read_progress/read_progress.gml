function read_progress(_key){
	
	var _key_ltr = string_letters(_key);
	
	if ds_map_exists(global.progress, _key_ltr){
		
	    if (is_array(global.progress[? _key_ltr])){
			
			var _key_num = real(string_digits(_key))
			return global.progress[? _key_ltr][_key_num];
			
		}else{
			
			return global.progress[? _key_ltr];
		}
	}else{
		
		return -1;
	}

}