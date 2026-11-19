if global.cursor>0{
    global.cursor--;
}else{
    global.cursor = array_length(controlmenu_obj.mouse_sprites);
}

audio_play_sound(aceptoption_snd,1,false);
image_xscale=0.98
image_yscale=0.98



