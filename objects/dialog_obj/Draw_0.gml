draw_sprite_ext(character_spr,img[num],300,yy,1,1,0,c_white,1)
draw_set_font(font)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_colour(c_dkgray)

if show==true{
draw_sprite(globotext_spr,0,600,150)

if global.lang=="es" draw_text_ext(600,150,string_hash_to_newline(estxt[num]),35,360)
if global.lang=="en" draw_text_ext(600,150,string_hash_to_newline(entxt[num]),35,360)
}

