draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_white)

draw_set_font(points_fnt)

var lph = 0.5*sin(degtorad(halo)) + 0.5

draw_text(544, 580, string_hash_to_newline("Loading data... "));
var _c1 = make_colour_rgb(148, 219, 81)//make_colour_rgb(148, 219, 81);
draw_set_alpha(lph)
draw_healthbar(394,600,694,610,load,c_black,_c1,_c1, 0, false, false)
draw_set_alpha(1)

draw_sprite(braineaten_spr,0,694,605)
draw_sprite_ext(cabecitazombie_spr,0,394+(load*3),605,-1,1,0,c_white,1)