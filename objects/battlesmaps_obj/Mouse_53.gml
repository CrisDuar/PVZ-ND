if global.niveles>73{maxmap=5}
else if global.niveles>51{maxmap=3}
else if global.niveles>30{maxmap=2}
else if global.niveles>15{maxmap=1}


if point_in_rectangle(mouse_x,mouse_y,x-80-25,y-23,x-80+25,y+23){
    global.battle_map=clamp(global.battle_map-1,0,maxmap)
    audio_play_sound(aceptoption_snd,1,false);
}

if point_in_rectangle(mouse_x,mouse_y,x+80-25,y-23,x+80+25,y+23){
    global.battle_map=clamp(global.battle_map+1,0,maxmap)
    audio_play_sound(aceptoption_snd,1,false);
}

