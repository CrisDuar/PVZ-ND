var _lang;
var _lock;
var _txt;
var _c = c_white

if (global.lang = "es"){
    _lang = 2
    _lock = "Completa el nivel 6 #para obtener logros";
}else{
    _lang = 0;
    _lock = "Beat level 6 to#get achievements";
}


if (global.niveles > 6){
    _txt = string(global.unlock_logros) + "/" + string(global.real_logros);
}else{
    _txt = _lock;
    _c = c_gray;
}

draw_sprite_ext(logrosmenu1_spr, hover + _lang, x, y+10, 1, 1, 0, _c, 1)
draw_sprite_ext(logrosmenu2_spr, 0, x, y, size, size, 0, _c, 1)

if (global.niveles <= 6) draw_sprite(candado_spr, 0, x - 5, y-45)

draw_set_font(levelname_fnt)
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)

draw_text_colour_outline(x,y - 90,_txt,c_white,c_white,0.85*alpha,c_dkgray,c_dkgray,alpha,2,20,1,1,0)

