draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_white)

draw_set_font(points_fnt)
/*
var sfx = audio_group_load_progress(SFX);
draw_text(544, 530, "Loading sfx: " + string(sfx) + "%");
draw_healthbar(444,540,644,550,sfx,c_black,c_lime,c_lime, 0, true, true)

draw_sprite(cabecitazombie_spr,0,444+(sfx*2),545)

var music = audio_group_load_progress(Music);
draw_text(544, 570, "Loading music: " + string(music) + "%");
draw_healthbar(444,580,644,590,music,c_black,c_lime,c_lime, 0, true, true)

draw_sprite(cabecitazombie_spr,0,444+(music*2),585)

*/

var load = (audio_group_load_progress(SFX) + audio_group_load_progress(Music))/2;
var lph = 0.5*sin(degtorad(halo)) + 0.5

draw_text(544, 580, string_hash_to_newline("Loading audio... "));
_c1 = make_colour_rgb(148, 219, 81)//make_colour_rgb(148, 219, 81);
draw_set_alpha(lph)
draw_healthbar(394,600,694,610,load,c_black,_c1,_c1, 0, false, false)
draw_set_alpha(1)

draw_sprite(braineaten_spr,0,694,605)
draw_sprite_ext(cabecitazombie_spr,0,394+(load*3),605,-1,1,0,c_white,1)

/* */
/*  */
