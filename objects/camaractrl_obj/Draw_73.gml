draw_set_font(plants_fnt)
draw_set_halign(fa_center)

var l = string_width(string_hash_to_newline(cont_txt))
cont_len = l

//draw_rectangle(view_xview+544-(l/2)-15,570,view_xview+544+(l/2)+15,620,true)

if reverse==1 and cont=false and hspeed=0{
    draw_text_colour_outline(__view_get( e__VW.XView, 0 )+544,595,cont_txt,c_white,c_white,1,c_dkgray,c_dkgray,1,3,10,1,1,0)
}

