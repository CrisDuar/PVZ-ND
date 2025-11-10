if (__view_get( e__VW.XView, 0 ) > 0) draw_sprite(almanacfg_spr,0,__view_get( e__VW.XView, 0 )+12,0)

//You got a prize!
draw_set_font(yougotaprize_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)

//tienda

var txt = "Suburban almanac"

if global.lang="es" txt = "Almanaque suburbano"
draw_text_ext_colour(__view_get( e__VW.WView, 0 )/2, 32 + __view_get( e__VW.YView, 0 ),string_hash_to_newline(txt),100,1000,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(__view_get( e__VW.WView, 0 )/2, 30 + __view_get( e__VW.YView, 0 ),string_hash_to_newline(txt),100,1000,c_white,c_white,c_white,c_white,image_alpha)

