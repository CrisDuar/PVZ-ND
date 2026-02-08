/// @description conveyor_number(obj)
/// @param obj
function conveyor_number(argument0) {
	var _am = 0
	with(argument0){
	    if type==1 _am++
	}

	return _am
}

function packets_number(_type, _id){
	
	var _am = 0;
	var _obj = menuplants_obj;
	
	if (!_type){
		_obj = menuzombi_obj;
	}
	
	with(_obj){
		if (select == _id + 1) _am++;
	}
	
	return _am;
}