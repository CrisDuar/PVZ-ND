/// @description object_point_in_rectangle_list(x1,y1,x2,y2,obj,list,order)
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param obj
/// @param list
/// @param order
function object_point_in_rectangle_list(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	//
	//
	//      x1,y1       first corner of the collision rectangle (filled), real
	//      x2,y2       opposite corner of the collision rectangle (filled), real
	//      obj         object to check for collision (or all), real
	//      prec        true for precise collision checking, bool
	//      notme       true to ignore the calling instance, bool
	//      list        list to store instance ids in, ds_list
	//      order       true to order instances by distance, bool
	//
	/// GMLscripts.com/license
	{
	    var xx, yy, x1,y1,x2,y2,obj,prec,notme,dsid,order,num,i;
	    x1 = argument0;
	    y1 = argument1;
	    x2 = argument2;
	    y2 = argument3;
	    obj = argument4;
	    dsid = argument5;
	    order = argument6;
	    num = 0;
    
	    if (order) {
        
	        var priority = ds_priority_create();
	        var cx = mean(x1,x2);
	        var cy = mean(y1,y2);
	        with (obj) {
	            if (id != other.id) {
	                i = point_in_rectangle(x, y, x1, y1, x2, y2)
	                //i = collision_rectangle(x1,y1,x2,y2,id,prec,false);
	                if (i != noone) {
	                    ds_priority_add(priority,i,point_distance(cx,cy,i.x,i.y));
	                    num++;
	                }
	            }
	        }
	        while (ds_priority_size(priority)) {
	            ds_list_add(dsid,ds_priority_delete_min(priority));
	        }
	        ds_priority_destroy(priority);
        
	    } else {
        
	        with (obj) {
	            if (id != other.id) {
	                i = point_in_rectangle(x, y, x1, y1, x2, y2)
	                //i = collision_rectangle(x1,y1,x2,y2,id,prec,false);
	                if (i != noone) {
	                    ds_list_add(dsid,i);
	                    num++;
	                }
	            }
	        }        
	    }
    
	    return num;
	}



}
