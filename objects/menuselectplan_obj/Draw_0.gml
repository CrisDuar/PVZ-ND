//draw_text(mouse_x, mouse_y, bans)

draw_sprite(grass1_spr,grass,x,y-130)
if sprite_index==menuselectmult_spr{
    draw_sprite(grass1_spr,grass,x+326,y-130)
}
if (unitsprite != 0){
	part_system_drawit(part)
	draw_sprite_ext(unitsprite, subimage,floor(x+xx*zomplant),floor(y-90+10*zomplant)+yy,1,1,1,c_white,1)
}

draw_self();
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(soles_fnt);

var _name = unitname_en;
if (global.lang="es") _name = unitname_es

draw_text_colour(x+xx*zomplant,y-68, string_hash_to_newline(unitcost),c_black,c_black,c_black,c_black,1)
draw_text_colour(x+xx*zomplant,y-205, string_hash_to_newline(_name),c_black,c_black,c_black,c_black,1)

if (sprite_index != menuselectmult_spr){
	
	for (var i = 0; i<5; i++){
		
		var _check = point_in_rectangle(mouse_x,mouse_y, x - 80 + (40*i) - 15,y-55, x - 80 + (40*i) + 15, y-20)
		
		var _c, _cs1, _cs2;
		var _pag = pag;
		var _maxpag = maxpag;
		var _crt_pag = (i) + (2 * num_pag);
		_cs1 = make_colour_rgb(71, 46, 29);
		_cs2 = make_colour_rgb(159, 228, 93);
		
		if (sprite_index==menuselectzomb_spr){
			_pag = zompag;
			_maxpag = zommaxpag;
			_cs1 = make_colour_rgb(63, 56, 63);
			_cs2 = make_colour_rgb(215, 114, 221);
		}
		
		if (_crt_pag > _maxpag){
			
			_c = c_dkgray;
			
		}else{
			if (_pag == _crt_pag){
				_c = _cs1;
			}else{
				if (_check){
					_c = c_white;
				}else{
					_c = _cs2;
				}
			}
		}
		
		draw_set_font(pages_fnt);
		//draw_rectangle( x - 80 + (40*i) - 15,y-55, x - 80 + (40*i) + 15, y-20, true)
		draw_text_colour(x - 80 + (40*i),y-35, _crt_pag + 1, _c, _c, _c, _c,opacidad)
	}
}
/*
if sprite_index==menuselectplant_spr{
    var check_hp1 = point_in_rectangle(mouse_x,mouse_y,x-80-15,y-55,x-80+15,y-20)
    var check_hp2 = point_in_rectangle(mouse_x,mouse_y,x-40-15,y-55,x-40+15,y-20)
    var check_hp3 = point_in_rectangle(mouse_x,mouse_y,x-15,y-55,x+15,y-20)
    var check_hp4 = point_in_rectangle(mouse_x,mouse_y,x+40-15,y-55,x+40+15,y-20)
    var check_hp5 = point_in_rectangle(mouse_x,mouse_y,x+80-15,y-55,x+80+15,y-20)
    
    draw_set_font(pages_fnt);
    
    var c = make_colour_rgb(71, 46, 29);
    if check_hp1{c = c_white}
    if pag==hp1 c = make_colour_rgb(159, 228, 93);
    draw_text_colour(x-80,y-35,string_hash_to_newline(hp1+1),c,c,c,c,opacidad)
    
    c = make_colour_rgb(71, 46, 29);
    if check_hp2{c = c_white}
    if pag==hp2 c = make_colour_rgb(159, 228, 93);
    draw_text_colour(x-40,y-35,string_hash_to_newline(hp2+1),c,c,c,c,opacidad)
    
    c = make_colour_rgb(71, 46, 29);
    if check_hp3{c = c_white}
    if pag==hp3 c = make_colour_rgb(159, 228, 93);
    draw_text_colour(x,y-35,string_hash_to_newline(hp3+1),c,c,c,c,opacidad)
    
    c = make_colour_rgb(71, 46, 29);
    if check_hp4{c = c_white}
    if pag==hp4 c = make_colour_rgb(159, 228, 93);
    draw_text_colour(x+40,y-35,string_hash_to_newline(hp4+1),c,c,c,c,opacidad)
    
    c = make_colour_rgb(71, 46, 29);
    if check_hp5{c = c_white}
    if pag==hp5 c = make_colour_rgb(159, 228, 93);
    draw_text_colour(x+80,y-35,string_hash_to_newline(hp5+1),c,c,c,c,opacidad)
}

//pages for zombies!
if sprite_index==menuselectzomb_spr{
    var check_hz1 = point_in_rectangle(mouse_x,mouse_y,x-80-15,y-55,x-80+15,y-20)
    var check_hz2 = point_in_rectangle(mouse_x,mouse_y,x-40-15,y-55,x-40+15,y-20)
    var check_hz3 = point_in_rectangle(mouse_x,mouse_y,x-15,y-55,x+15,y-20)
    var check_hz4 = point_in_rectangle(mouse_x,mouse_y,x+40-15,y-55,x+40+15,y-20)
    var check_hz5 = point_in_rectangle(mouse_x,mouse_y,x+80-15,y-55,x+80+15,y-20)
    
    draw_set_font(pages_fnt);
    
    var c = make_colour_rgb(63, 56, 63);
    if check_hz1{c = c_white}
    if zompag==hz1 c = make_colour_rgb(215, 114, 221);;
    draw_text_colour(x-80,y-35,string_hash_to_newline(hz1+1),c,c,c,c,opacidad)
    
    c = make_colour_rgb(63, 56, 63);
    if check_hz2{c = c_white}
    if zompag==hz2 c = make_colour_rgb(215, 114, 221);;
    draw_text_colour(x-40,y-35,string_hash_to_newline(hz2+1),c,c,c,c,opacidad)
    
    c = make_colour_rgb(63, 56, 63);
    if check_hz3{c = c_white}
    if zompag==hz3 c = make_colour_rgb(215, 114, 221);;
    draw_text_colour(x,y-35,string_hash_to_newline(hz3+1),c,c,c,c,opacidad)
    
    c = make_colour_rgb(63, 56, 63);
    if check_hz4{c = c_white}
    if zompag==hz4 c = make_colour_rgb(215, 114, 221);;
    draw_text_colour(x+40,y-35,string_hash_to_newline(hz4+1),c,c,c,c,opacidad)
    
    c = make_colour_rgb(63, 56, 63);;
    if check_hz5{c = c_white}
    if zompag==hz5 c = make_colour_rgb(215, 114, 221);;
    draw_text_colour(x+80,y-35,string_hash_to_newline(hz5+1),c,c,c,c,opacidad)
}
*/
if (unit_ban){
	
	draw_set_font(sudden_fnt)
	draw_set_halign(fa_center)
	draw_set_valign(fa_bottom)
	
	var _txt = "Banning units..."
	if (global.lang == "es") _txt = "Baneando unidades..."
	
	var _c1 = make_colour_rgb(237, 13, 13);
	var _c2 = make_colour_rgb(123, 0, 10);
	
	draw_text_colour_outline(x + 163 + random_range(-1, 1), 110 + random_range(-1, 1), _txt, _c1, _c1, opacidad, _c2,_c2, opacidad,3,10,1.1,1.1,0)
}