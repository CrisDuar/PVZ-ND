//dibujar variables
draw_self();
draw_set_font(soles_fnt)
draw_set_halign(fa_middle)
draw_set_halign(fa_center)

if select=true draw_sprite(load_spr,0,x,y)
if menuselectplan_obj.zomplant!=type draw_sprite(load_spr,0,x,y)
if sprite_index==sprite draw_text_colour(x+38,y+17, string_hash_to_newline(cost), c_black,c_black,c_black,c_black, 1)
if ban==true draw_sprite(banplant_spr,0,x,y)

