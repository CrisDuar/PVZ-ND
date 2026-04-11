/// @description get_objetive(x1,y1,x2,y2)
/// @param x1
/// @param y1
/// @param x2
/// @param y2
function get_objetive(x1, y1, x2, y2, _type) {

	//var _list = ds_list_create();
	//var _num = collision_rectangle_list(select_obj.x,640,select_obj.x,0,select_obj,true,true,_list,false)
	//var _num = collision_rectangle_list(x1,y1,x2,y2,select_obj,true,true,_list,true)
	var _num = instance_number(select_obj);
	var _obj = 0

	for (var i = _num - 1; i >= 0; --i;){
	    with(select_obj){
			if (slotnum == i && ocupied == false && zom_side == _type){
				_obj = id;
				break;
			}
	    }
	}
	
	return _obj;
	
	//ds_list_destroy(_list);



}
