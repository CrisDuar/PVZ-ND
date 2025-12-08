/// @description  instance_nth_nearest(x,y,obj,n)
/// @param x
/// @param y
/// @param obj
/// @param n
/*
function instance_nth_nearest(argument0, argument1, argument2, argument3) {
	//
	//  Returns the id of the nth nearest instance of an object
	//  to a given point or noone if none is found.
	//
	//      x,y       point coordinates, real
	//      obj       object index (or all), real
	//      n         proximity, real
	//
	/// GMLscripts.com/license
	{
	    var pointx,pointy,object,n,list,nearest;
	    pointx = argument0;
	    pointy = argument1;
	    object = argument2;
	    n = argument3;
	    n = min(max(1,n),instance_number(object));
	    list = ds_priority_create();
	    nearest = noone;
	    with (object) ds_priority_add(list,id,distance_to_point(pointx,pointy));
	    repeat (n) nearest = ds_priority_delete_min(list);
	    ds_priority_destroy(list);
	    return nearest;
	}



}
*/

function instance_nth_nearest(_pointx, _pointy, _object, _n) {
    if (!instance_exists(_object))
        return noone;
    
    _n = clamp(_n, 1, instance_number(_object)); 
    var _list = ds_priority_create();
    with (_object) {
        // using square of distance to avoid expensive square root calculations
        ds_priority_add(_list, id, sqr(x - _pointx) + sqr(y - _pointy));
    }
    var _nearest = noone;
    repeat (_n) {
        _nearest = ds_priority_delete_min(_list);
    }
    ds_priority_destroy(_list)
    return _nearest;
}