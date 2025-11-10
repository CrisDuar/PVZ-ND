/// @description butter_calc(dist)
/// @param dist
function butter_calc(argument0) {

	var _prob = 25;
	var _dist = argument0/90

	if (_dist >= 4){
	    _prob = 35
    
	}else if (_dist <= 2){
	    _prob = 50

	}else if (_dist <= 1){
	     _prob = 75
	}

	var _num = irandom(100)

	if (_num <= _prob){
	    return true;
	}else{
	    return false;
	}



}
