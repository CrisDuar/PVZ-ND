if global.gameover=false and global.iniciogame==true
if point_in_rectangle(mouse_x,mouse_y,x-29,y-60,x+29,y)
and timer<=0
and sleep==false
and sprite_index==imgidle
and (control_obj.multijugador=false){
    audio_play_sound(setaplasma1_snd,0.2,false)
    image_index=0
    sprite_index=imgshot
    disparando=true
}

