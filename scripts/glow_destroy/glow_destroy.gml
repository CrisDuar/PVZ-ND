/// @description glow_destroy(x, y, glow, glow_alpha, glow_power)
/// @param x
/// @param  y
/// @param  glow
/// @param  glow_alpha
/// @param  glow_power
function glow_destroy(argument0, argument1, argument2, argument3, argument4) {
	with(instance_create(argument0, argument1, glow_destroyed_obj)){
	    glow=argument2
	    glow_alpha=argument3
	    glow_power=argument4
	}



}
