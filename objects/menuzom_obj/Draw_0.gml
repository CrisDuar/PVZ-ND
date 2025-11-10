draw_self();

if image_alpha==1{
draw_set_font(soles_fnt)
draw_set_color(c_black)
draw_set_halign(fa_right)
draw_set_valign(fa_center)
draw_text(x-12,y+2,string_hash_to_newline(control_obj.drawzomes))
}

