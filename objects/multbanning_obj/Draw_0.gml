draw_self();
draw_set_font(plants_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)

var _txt = "Banning";

if (global.lang="es") _txt = "Baneos";

draw_text_ext_colour(x,y-75,string_hash_to_newline(_txt) ,32,440,color,color,color,color,image_alpha);