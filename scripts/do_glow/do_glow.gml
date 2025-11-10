/// @description do_glow(x, y)
/// @param x
/// @param  y
function do_glow(argument0, argument1) {
	var _x = argument0
	var _y = argument1

	draw_set_blend_mode(bm_subtract)
	var grow = (1/2)*sin(degtorad(glow))+0.5
	draw_sprite_ext(glowfog_spr,0,x + _x,y + _y,glow_power+(grow/6),glow_power+(grow/6),0,c_black,glow_alpha)
	draw_set_blend_mode(bm_normal)



}
