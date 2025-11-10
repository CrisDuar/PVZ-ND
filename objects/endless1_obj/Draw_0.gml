draw_self();
draw_set_font(plants_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)

draw_text_ext_colour(x,y-115,string_hash_to_newline(name),32,440,color,color,color,color,image_alpha)
if locked=false{
if global.lang=="es"{
draw_text_ext_colour(x,y+85,string_hash_to_newline("Record: " + string(record)),32,440,color,color,color,color,image_alpha)
draw_text_ext_colour(x,y+115,string_hash_to_newline("Banderas actuales: " + string(progress)),32,440,color,color,color,color,image_alpha)

if confirm==true{
draw_text_ext_colour(x,y+260,string_hash_to_newline("Pulse de nuevo#para confirmar"),32,440,color,color,color,color,image_alpha)
}
}

if global.lang=="en"{
draw_text_ext_colour(x,y+85,string_hash_to_newline("Record: " + string(record)),32,440,color,color,color,color,image_alpha)
draw_text_ext_colour(x,y+115,string_hash_to_newline("Current flags: " + string(progress)),32,440,color,color,color,color,image_alpha)

if confirm==true{
draw_text_ext_colour(x,y+260,string_hash_to_newline("Press again#to confirm"),32,440,color,color,color,color,image_alpha)
}
}

//botones

//continuar
if point_in_rectangle(mouse_x,mouse_y,x-69,y+180-22,x+69,y+180+22){
if progress>0{
draw_sprite_ext(continue_spr,0,x,y+180,1.05,1.05,0,c_white,1)
}
else{
draw_sprite_ext(newgame_spr,0,x,y+180,1.05,1.05,0,c_white,1)
}

}
else{
if progress>0{
draw_sprite(continue_spr,0,x,y+180)
}
else{
draw_sprite(newgame_spr,0,x,y+180)
}
}

//nuevo juego
if progress>0{
if point_in_rectangle(mouse_x,mouse_y,x-69,y+230-22,x+69,y+230+22){
draw_sprite_ext(newgame_spr,0,x,y+230,1.05,1.05,0,c_white,1)
}
else{
draw_sprite(newgame_spr,0,x,y+230)
}
}
}else{
draw_sprite(lockgamemode_spr,0,x,y)
}

