function info_sprites() {
	var _indx = get_costume_yy()
	var case_check = 1

	for(i=0; i<argument_count; i+=2){  
	    if global.costumes[# 1, _indx]==1{
	        if (global.costumes[# 2, _indx] == case_check){
	            menuselectplan_obj.unitcost=argument[i];
	            menuselectplan_obj.unitsprite=argument[i+1];
	        }
	    }
	    case_check++
	}



}
