/// @description  destroy_tiles(obj, numx, numy, iswater)
/// @param obj
/// @param  numx
/// @param  numy
/// @param  iswater
function destroy_tiles(argument0, argument1, argument2, argument3) {
	var obj, numx, numy;
	obj = argument0;
	numx = argument1;
	numy = argument2;
	iswater= argument3;

	if instance_exists(obj){
	    if numx>-1{
	        with(obj)
	        {if x == (282+90*numx)-41 and other.iswater=water {instance_destroy()}}
	    }
    
	    if numy>-1{
	        with(obj)
	        {if y == (84+104*numy)-49 and other.iswater=water {instance_destroy()}}
	    }
	}



}
