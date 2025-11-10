if sprite_index==menuselectplant_spr{
    var check_hp1 = point_in_rectangle(mouse_x,mouse_y,x-80-15,y-55,x-80+15,y-20)
    var check_hp2 = point_in_rectangle(mouse_x,mouse_y,x-40-15,y-55,x-40+15,y-20)
    var check_hp3 = point_in_rectangle(mouse_x,mouse_y,x-15,y-55,x+15,y-20)
    var check_hp4 = point_in_rectangle(mouse_x,mouse_y,x+40-15,y-55,x+40+15,y-20)
    var check_hp5 = point_in_rectangle(mouse_x,mouse_y,x+80-15,y-55,x+80+15,y-20)
    
    if check_hp1{
        pag=hp1
        audio_play_sound(seleccionarplantas_snd,1,false)
    }else if check_hp2{
        pag=hp2
        audio_play_sound(seleccionarplantas_snd,1,false)
    }else if check_hp3{
        pag=hp3
        audio_play_sound(seleccionarplantas_snd,1,false)
    }else if check_hp4{
        pag=hp4
        audio_play_sound(seleccionarplantas_snd,1,false)
    }else if check_hp5{
        pag=hp5
        audio_play_sound(seleccionarplantas_snd,1,false)
    }
}
if sprite_index==menuselectzomb_spr{
    var check_hz1 = point_in_rectangle(mouse_x,mouse_y,x-80-15,y-55,x-80+15,y-20)
    var check_hz2 = point_in_rectangle(mouse_x,mouse_y,x-40-15,y-55,x-40+15,y-20)
    var check_hz3 = point_in_rectangle(mouse_x,mouse_y,x-15,y-55,x+15,y-20)
    var check_hz4 = point_in_rectangle(mouse_x,mouse_y,x+40-15,y-55,x+40+15,y-20)
    var check_hz5 = point_in_rectangle(mouse_x,mouse_y,x+80-15,y-55,x+80+15,y-20)
    
    if check_hz1{
        zompag=hz1
        audio_play_sound(seleccionarplantas_snd,1,false)
    }else if check_hz2{
        zompag=hz2
        audio_play_sound(seleccionarplantas_snd,1,false)
    }else if check_hz3{
        zompag=hz3
        audio_play_sound(seleccionarplantas_snd,1,false)
    }else if check_hz4{
        zompag=hz4
        audio_play_sound(seleccionarplantas_snd,1,false)
    }else if check_hz5{
        zompag=hz5
        audio_play_sound(seleccionarplantas_snd,1,false)
    }
}

