function seedpacket_is_free() {
	//seedpacket_is_free()
	var points

	if list_type=menuplants_obj{
	    points = control_obj.soles
	}else{
	    points = control_obj.zomes
	}

	var _f=false

	if t_rechar<=0 and points>=cost and cantselect=false{
	    _f=true
	}

	return _f;
}
