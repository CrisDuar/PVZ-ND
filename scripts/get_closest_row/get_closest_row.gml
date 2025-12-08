/// @description get_closest_row(y)
/// @param y
function get_closest_row(yy) {
	var check = 9000;
	var row = 0

	if instance_exists(zombispawn_obj){
		
		var _rows_arr = zombispawn_obj.rows_arr;
		
		for (var i = 0; i < array_length(_rows_arr); i++){
			
			if (abs(_rows_arr[i] - yy) < check){
				
				row = _rows_arr[i];
				check = abs(_rows_arr[i] - yy);
			}
		}
		/*
	    check=min(
	    abs(zombispawn_obj.f1-yy),
	    abs(zombispawn_obj.f2-yy),
	    abs(zombispawn_obj.f3-yy),
	    abs(zombispawn_obj.f4-yy),
	    abs(zombispawn_obj.f5-yy),
	    abs(zombispawn_obj.f6-yy)
	    )
    
	    if check==abs(zombispawn_obj.f1-yy) row=zombispawn_obj.f1
	    if check==abs(zombispawn_obj.f2-yy) row=zombispawn_obj.f2
	    if check==abs(zombispawn_obj.f3-yy) row=zombispawn_obj.f3
	    if check==abs(zombispawn_obj.f4-yy) row=zombispawn_obj.f4
	    if check==abs(zombispawn_obj.f5-yy) row=zombispawn_obj.f5
	    if check==abs(zombispawn_obj.f6-yy) row=zombispawn_obj.f6
*/		
	    return row
	}else{
	    return yy
	}



}
