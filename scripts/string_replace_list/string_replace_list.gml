function string_replace_list(_string, _list, _replace){
	
	//String_trim doesn't work for some reason, so i'm using string_replace instead
	
	for (var k = 0; k < array_length(_list); k++){
		_string = string_replace(_string, _list[k], _replace);
	}
	
	return _string;
}