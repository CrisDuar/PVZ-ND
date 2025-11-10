if point_in_rectangle(mouse_x,mouse_y,x-80-25,y-23,x-80+25,y+23){
    global.battle_diff=clamp(global.battle_diff-1,0,image_number-1)
    audio_play_sound(aceptoption_snd,1,false);
}

if point_in_rectangle(mouse_x,mouse_y,x+80-25,y-23,x+80+25,y+23){
    global.battle_diff=clamp(global.battle_diff+1,0,image_number-1)
    audio_play_sound(aceptoption_snd,1,false);
}

