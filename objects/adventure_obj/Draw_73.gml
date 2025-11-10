if audio_is_playing(gameover_snd){
if global.lang="en" draw_sprite(aventuraglow1_spr,image_index,x,y)
if global.lang="es" draw_sprite(aventuraglow2_spr,image_index,x,y)
}
else{
if global.tiempo=2 and image_index=1{
    if global.lang="en" draw_sprite_ext(aventuraglow3_spr,0,x,y,scale,scale,0,c_white,image_alpha)
    if global.lang="es" draw_sprite_ext(aventuraglow3_spr,1,x,y,scale,scale,0,c_white,image_alpha)
}
}

