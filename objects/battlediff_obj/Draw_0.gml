draw_self();
draw_set_font(plants_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)

if global.lang="en"{
    draw_text_ext_colour(x,y-85,string_hash_to_newline("Difficulty: " + string(text)),32,440,color,color,color,color,image_alpha)
}

if global.lang="es"{
    draw_text_ext_colour(x,y-85,string_hash_to_newline("Dificultad: " + string(text)),32,440,color,color,color,color,image_alpha)
}

var _img

if image_index>0 _img=0 else _img=1
draw_sprite_ext(change2_spr,_img,x-80,y,s1,s1,0,c_white,1)
if image_index<image_number-1 _img=0 else _img=1
draw_sprite_ext(change2_spr,_img,x+80,y,s2*-1,s2,0,c_white,1)

