//draw_self();
var _height = 100
var _middle = 465

draw_set_colour(c_black)
draw_set_alpha(0.5 * alpha)
draw_rectangle(0, _middle - (_height/2), room_width, _middle + (_height/2), false)
draw_set_colour(c_white)
draw_set_alpha(1)

//draw_text(mouse_x, mouse_y, long_enough)

var _txt,_lang;

if (global.lang == "es"){
    _txt = "Logro desbloqueado: "
    _lang = 2
}else{
    _txt = "Achievement unlocked: "
    _lang = 1
}

if (global.logros[# 6, id_show] == 3) _txt = "";

draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_font(yougotaprize_fnt)

draw_text_colour(__view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 )/2), 465, string_hash_to_newline(_txt + global.logros[# _lang, id_show]), c_white, c_white, c_white, c_white, alpha)

