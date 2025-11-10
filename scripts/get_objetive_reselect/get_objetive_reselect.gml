/// @description get_objetive_reselect(x1,y1,x2,y2,num)
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param num
function get_objetive_reselect(argument0, argument1, argument2, argument3, argument4) {
	x1=argument0
	y1=argument1
	x2=argument2
	y2=argument3
	numcheck=argument4

	var _list = ds_list_create();
	var _num = collision_rectangle_list(x1,y1,x2,y2,select_obj,true,true,_list,false)
	objetive=0

	if _num > 0{
	    for (var i = 0; i < _num; ++i;){
	        with(_list[| i]){
	            if slotnum=other.numcheck {other.objetive=id}
	        }
	    }
	}



}
