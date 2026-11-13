
//draw gameplay modifiers
if (spawngui){ 
    
    draw_set_font(sudden_fnt)
	draw_set_halign(fa_left)
	draw_set_valign(fa_bottom)
	
	var _txt = "Challenges"
	if (global.lang == "es") _txt = "Retos"
	
	var _c1 = c_white;
	var _c2 = c_dkgray;
    
    
    var _am = 0;
    
    for (var i = 0; i < array_length(control_obj.gameplay_modifier); i++){
        
        if (!control_obj.gameplay_modifier[i]) continue;
            
        _am++;
    }
    
    if (_am == 0) exit;
    
    var _h, _w, _x, _y = 0;
    
    _w = 65/16 * (1 + floor(_am / 8));
    _h = 65/16 * min(_am, 8);
    
    _x = x - sprite_xoffset - 350;
    _y = y - sprite_yoffset;
    
    
    draw_text_colour_outline(_x, _y - 10, _txt, _c1, _c1, opacidad, _c2,_c2, opacidad,3,10,1.1,1.1,0)
    
    draw_sprite_ext(brains_bg_spr, 0, _x, _y, _w, _h, 0, c_white, 1);
    
    _am = 0;
    
    for (var i = 0; i < array_length(control_obj.gameplay_modifier); i++){
        
        if (!control_obj.gameplay_modifier[i]) continue;
        
        draw_sprite(brains_icons_spr, i, _x + 32 + (61 * floor(_am / 8)), _y + 10 + 45 * (_am % 8));
        
        _am++;
    }
    
    
    
}