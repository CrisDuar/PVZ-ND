draw_sprite_ext(spr,img[num],300+random_range(-mot[1],mot[1]),yy+random_range(-mot[1],mot[1]),xsc,ysc,angle,c_white,1)
draw_set_font(font)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_colour(c_dkgray)

if show==true and timeline_running==false{
draw_sprite(globotext_spr,0,600,150)
//draw_text_ext(600,150,string(angle) + " " + string(angle_sin)+ " " + string(mot[0]),35,360)
if global.lang=="es" draw_text_ext(600,150,string_hash_to_newline(estxt[num]),35,360) else draw_text_ext(600,150,string_hash_to_newline(entxt[num]),35,360);
}

