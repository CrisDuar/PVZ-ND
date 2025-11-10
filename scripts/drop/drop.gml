/// @description drop(x, y, sprite_index, image_index, sfx?, image_blend, point, depth)
/// @param x
/// @param  y
/// @param  sprite_index
/// @param  image_index
/// @param  sfx?
/// @param  image_blend
/// @param  point
/// @param  depth
function drop(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	var xx = argument0
	var yy = argument1
	var sprite = argument2
	var image = argument3
	var sfx = argument4
	var blend = argument5
	var p = argument6
	var _depth = argument7

	var ret_obj = instance_create(xx,yy,popdrop_obj)

	with(ret_obj){
	    if sfx audio_play_sound(pophead_snd,1,false);
	    image_blend = blend
	    image_index = image
	    sprite_index = sprite
	    point = p
	    depth = _depth
	}

	return ret_obj;



}
