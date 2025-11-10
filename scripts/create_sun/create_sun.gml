/// @description create_sun(x, y, type, cost, scale)
/// @param x
/// @param  y
/// @param  type
/// @param  cost
/// @param  scale
function create_sun(argument0, argument1, argument2, argument3, argument4) {
	var xx = argument0
	var yy = argument1
	var _type = argument2
	var _cost = argument3
	var _scale = argument4

	with(instance_create(xx,yy,_type)){
	    costo = _cost
	    scale = _scale
	}



}
