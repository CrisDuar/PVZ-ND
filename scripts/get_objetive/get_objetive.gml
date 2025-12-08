/// @description get_objetive(x1,y1,x2,y2)
/// @param x1
/// @param y1
/// @param x2
/// @param y2
function get_objetive(x1, y1, x2, y2) {

	var _list = ds_list_create();
	//var _num = collision_rectangle_list(select_obj.x,640,select_obj.x,0,select_obj,true,true,_list,false)
	var _num = collision_rectangle_list(x1,y1,x2,y2,select_obj,true,true,_list,true)
	objetive=0

	if _num > 0{
	    for (var i = 0; i < _num; ++i;){
	        with(_list[| i]){
	            if ocupied=false {other.objetive=id}
	        }
	    }
	}



}
