
//draw gameplay modifiers
if (spawngui){ 
    
    draw_set_font(sudden_fnt)
	draw_set_halign(fa_left)
	draw_set_valign(fa_bottom)
	
	var _txt = "Brain#Busters"
	if (global.lang == "es") _txt = "Rompe#Cerebros"
	
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
    
    draw_set_halign(fa_center)
    draw_text_colour_outline(_x + 60, _y - 5, _txt, _c1, _c1, opacidad, _c2,_c2, opacidad,3,10,1,1,0)
    
    //draw_sprite_ext(brains_bg_spr, 0, _x, _y, _w, _h, 0, c_white, 1);
    
    _am = 0;
    
    var _select = -1
    
    for (var i = 0; i < array_length(control_obj.gameplay_modifier); i++){
        
        if (!control_obj.gameplay_modifier[i]) continue;
        
        var x1 = _x + 32 + (61 * floor(_am / 8))
        var y1 = _y + 10 + 45 * (_am % 8)
        
        draw_set_color(c_white)
        //draw_rectangle(x1 - 30, y1, x1 + 30, y1 + 43, true)
        
        if (point_in_rectangle(mouse_x, mouse_y, x1 - 30, y1, x1 + 30, y1 + 43)) _select = i;
        
        draw_sprite(brains_icons_spr, i, _x + 32 + (61 * floor(_am / 8)), _y + 10 + 45 * (_am % 8));
        
        
        
        _am++;
    }
    
    if (_select != -1){
        
        var _offset = 0
        if (global.lang == "es") _offset = 2;
        
        var _name = global.challenges_desc[# _offset, _select + 1]
        var _desc = global.challenges_desc[# _offset + 1, _select + 1] 
        
        var _xt = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]);
        var _yt = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]);
        
        draw_sprite_ext(brains_bg_spr, 0, _xt - 347, _yt - 130, 21.5, 7.8, 0, c_white, 1);
        
        draw_set_halign(fa_right)
        draw_set_valign(fa_top)
        draw_set_color(make_colour_rgb(71, 46, 29))
        draw_set_font(plants_fnt)
        draw_text(_xt - 25, _yt - 115, _name)
        
        draw_set_font(soles_fnt)
        draw_text_ext(_xt - 25, _yt - 80, _desc, 20, 320)
    }
    
}