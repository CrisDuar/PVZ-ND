var _lang;
if global.lang = "es" _lang = 1 else _lang = 0;

/*
n achievement ID
[# 0, n] achievement status
[# 1, n] achievement name EN
[# 2, n] achievement name ES
[# 3, n] achievement desc EN
[# 4, n] achievement desc ES
[# 5, n] achievement icon
[# 6, n] achievement type 
    [0] normal
    [1] Hard
    [2] secret
    [3] just notification
*/

var _col = 0;
var _row = 0;

var _x = 70
var _y = 150

var _w = 450
var _h = 110

var _txt_sep = 2

//loop through the grid
for(var i = 0; i < global.num_logros; i++){
    var _unlock = global.logros[# 0, i];
    var _name = global.logros[# 1 + _lang, i];
    var _desc = global.logros[# 3 + _lang, i];
    var _icon = global.logros[# 5, i];
    var _type = global.logros[# 6, i];
    var _c = c_white
    
    if (!_unlock) _c = c_dkgray
    
    var _ct1 = make_colour_rgb(135, 83, 39);
    
    if (_type != 3){
    
        if (_type == 2 and _unlock == false){
        
            draw_sprite(logros_marcos_spr, 3, _x + (_w * _col) - scroll, _y + (_h * _row))
            
            draw_set_font(plants_fnt)
            draw_set_valign(fa_bottom)
            draw_text_colour(_x + (_w * _col) + 40 - scroll, _y + (_h * _row) - _txt_sep, string_hash_to_newline("???"), _ct1, _ct1, _ct1, _ct1, 1)
            draw_set_font(levelname_fnt)
            draw_set_valign(fa_top)
            draw_text_colour(_x + (_w * _col) + 40 - scroll, _y + (_h * _row) + _txt_sep, string_hash_to_newline("?????"), _ct1, _ct1, _ct1, _ct1, 1)

        }else{
            draw_sprite_ext(logros_icons_spr, _icon, _x + (_w * _col) - scroll, _y + (_h * _row), 1, 1, 0, _c, 1);
            draw_sprite_ext(logros_marcos_spr, _type, _x + (_w * _col) - scroll, _y + (_h * _row), 1, 1, 0, c_white, 1);
            if (!_unlock) draw_sprite(candado_spr, 0, _x + (_w * _col) - scroll, _y + (_h * _row))
            
            draw_set_font(plants_fnt)
            draw_set_valign(fa_bottom)
            draw_text_ext_colour(_x + (_w * _col) + 40 - scroll, _y + (_h * _row) - _txt_sep, string_hash_to_newline(_name), 25, _w - 90, _ct1, _ct1, _ct1, _ct1, 1)
            draw_set_font(levelname_fnt)
            draw_set_valign(fa_top)
            draw_text_ext_colour(_x + (_w * _col) + 40 - scroll, _y + (_h * _row) + _txt_sep, string_hash_to_newline(_desc), 25, _w - 90, _ct1, _ct1, _ct1, _ct1, 1)
        }
        
        if (_row < row){
            _row++ 
        }else{
            _row = 0;
            _col++
        }
    }
}


/* */
/*  */
