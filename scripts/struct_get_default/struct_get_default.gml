function struct_get_default(_struct, _key, _default){
	
	if variable_struct_exists(_struct, _key) {
		
	    return struct_get(_struct, _key);
	} else {
		
		return _default;
	}
	
}