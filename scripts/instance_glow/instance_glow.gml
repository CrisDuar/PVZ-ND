/// @description instance_glow(object_index, x, y)
/// @param object_index
/// @param  x
/// @param  y
function instance_glow(argument0, argument1, argument2) {

	var obj = argument0
	var xx = argument1;
	var yy = argument2;

	if instance_exists(obj){
	    with(obj){
	        do_glow(xx, yy)
	    }
	}




}
