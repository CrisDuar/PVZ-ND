function create_warning(_es, _en, _type, _danger){
	
	var _warn = instance_create_depth(0, 0, -999999 - global.popup_open - 1, generic_warn_obj)
	
	with(_warn){
		
		txt_en = _en;
		txt_es = _es
		type = _type;
		danger = _danger;
	}
	
	return _warn;
}