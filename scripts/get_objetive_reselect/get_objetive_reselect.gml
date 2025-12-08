/// @description get_objetive_reselect(x1,y1,x2,y2,num)
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param num
function get_objetive_reselect(x1, y1, x2, y2, numcheck) {

	var _list = ds_list_create();
	var _num = collision_rectangle_list(x1,y1,x2,y2,select_obj,true,true,_list,true)
	objetive=0

	if _num > 0{
	    for (var i = 0; i < _num; ++i;){
	        with(_list[| i]){
	            if slotnum=other.numcheck {other.objetive=id}
	        }
	    }
	}



}
