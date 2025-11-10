var sun = 25// + (50 * control_obj.multijugador)

if mouse_check_button_pressed(mb_left) and (control_obj.multijugador=false) and global.iniciogame==true and global.gameover=false{
    if point_in_rectangle(mouse_x,mouse_y,x-29,y-60,x+29,y) and control_obj.soles>=sun and control_obj.seleccionado==0 and control_obj.pala==0{
        control_obj.soles-=sun
        image_yscale=1.5
        a=1
        img=0.32
        audio_sound_pitch(audio_play_sound(hierbalupa_snd,1,false),random_range(0.85,1.15))
        instance_create(x+25,y-40,rainbow_obj)
    }
}

