draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,alpha)
draw_set_font(plants_fnt)
draw_set_valign(fa_bottom)
draw_set_halign(fa_center)

if image_alpha==1{
    draw_sprite_ext(shopthings_spr,thing,x,y-100,1,1,0,c_white,alpha)
    draw_text_ext_colour(x,y-210,string_hash_to_newline(text),32,200,color,color,color,color,alpha)
    draw_text_ext_colour(x,y-170,string_hash_to_newline(string(cost) + " $"),32,440,color2,color2,color2,color2,alpha)
    
    if show_desc==true draw_text_ext_colour(544,__view_get( e__VW.YView, 0 )+550,string_hash_to_newline(desc),32,1000,color,color,color,color,1)
    //if image_index!=1 and show_desc==true{
    //draw_text_ext_colour(544,view_yview+550,desc,32,1000,color,color,color,color,1)
    //}
}else{
    draw_sprite_ext(shopthings_spr,0,x,y-100,1,1,0,c_white,alpha)
    draw_text_ext_colour(x,y-210,string_hash_to_newline("???"),32,440,color,color,color,color,alpha)
    if show_desc==true draw_text_ext_colour(544,__view_get( e__VW.YView, 0 )+550,string_hash_to_newline(text_lock),32,1000,color,color,color,color,1)
    draw_text_ext_colour(x,y-170,string_hash_to_newline(lock),32,440,c_red,c_red,c_red,c_red,alpha)
}

if confirm==true{
draw_text_ext_colour(x,y+90,string_hash_to_newline(cotext),32,440,color,color,color,color,1)
}

