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
draw_text_colour(x+xx*zomplant,y-68,string_hash_to_newline(string(unitcost)),c_black,c_black,c_black,c_black,1)

if global.lang="es"{
    draw_text_colour(x+xx*zomplant,y-205,string_hash_to_newline(unitname_es),c_black,c_black,c_black,c_black,1)
}else{
    draw_text_colour(x+xx*zomplant,y-205,string_hash_to_newline(unitname_en),c_black,c_black,c_black,c_black,1)
}

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
    
    var c = make_colour_rgb(63, 56, 63);;
    if check_hz1{c = c_white}
    if zompag==hz1 c = make_colour_rgb(215, 114, 221);;
    draw_text_colour(x-80,y-35,string_hash_to_newline(hz1+1),c,c,c,c,opacidad)
    
    c = make_colour_rgb(63, 56, 63);;
    if check_hz2{c = c_white}
    if zompag==hz2 c = make_colour_rgb(215, 114, 221);;
    draw_text_colour(x-40,y-35,string_hash_to_newline(hz2+1),c,c,c,c,opacidad)
    
    c = make_colour_rgb(63, 56, 63);;
    if check_hz3{c = c_white}
    if zompag==hz3 c = make_colour_rgb(215, 114, 221);;
    draw_text_colour(x,y-35,string_hash_to_newline(hz3+1),c,c,c,c,opacidad)
    
    c = make_colour_rgb(63, 56, 63);;
    if check_hz4{c = c_white}
    if zompag==hz4 c = make_colour_rgb(215, 114, 221);;
    draw_text_colour(x+40,y-35,string_hash_to_newline(hz4+1),c,c,c,c,opacidad)
    
    c = make_colour_rgb(63, 56, 63);;
    if check_hz5{c = c_white}
    if zompag==hz5 c = make_colour_rgb(215, 114, 221);;
    draw_text_colour(x+80,y-35,string_hash_to_newline(hz5+1),c,c,c,c,opacidad)
}

/////////////////////
/*draw_text(x+300,y,"index: " +string(global.costumes[# 0, 1]))
draw_text(x+300,y+20,"current: " +string(global.costumes[# 1, 1]))
draw_text(x+300,y+40,"counter: " + string(global.costumes[# 2, 1]) + " || " + string(global.costumes[# 2, 1]+3))
draw_text(x+300,y+60,"default 0: " +string(global.costumes[# 3, 1]))
draw_text(x+300,y+80,"cos1: " +string(global.costumes[# 4, 1]))
draw_text(x+300,y+100,"cos2: " +string(global.costumes[# 5, 1]))

var _yy=-1
if ds_grid_value_exists(global.costumes, 0, 0, 0, ds_grid_height(global.costumes)-1, plant){
    _yy = ds_grid_value_y(global.costumes, 0, 0, 0, ds_grid_height(global.costumes)-1, plant);
}
draw_text(x+300,y+120,"_yy: " +string(_yy))
draw_text(x+300,y+140,"global plant: " +string(plant))

var _max = ds_grid_get_max(global.costumes, 4, _yy, ds_grid_width(global.costumes)-1, _yy) 

draw_text(x+300,y+160,"max costume (0 || 1): " +string(_max))

/* */
/*  */
