if place_meeting(x,y,setaplasma_obj){
    with(instance_nearest(x,y,setaplasma_obj)){
        if timer<=0 and sleep==false and sprite_index==imgidle{
            audio_play_sound(setaplasma1_snd,0.2,false)
            image_index=0
            sprite_index=imgshot
            disparando=true
        }
    }
}

if place_meeting(x,y,hierbalupa_obj){
    with(instance_nearest(x,y,hierbalupa_obj)){
        if control_obj.soles>=50{
            control_obj.soles-=50
            image_yscale=1.5
            a=1
            img=0.32
            audio_sound_pitch(audio_play_sound(hierbalupa_snd,1,false),random_range(0.85,1.15))
            instance_create(x+25,y-40,rainbow_obj)
        }
    }
}

audio_play_sound(seleccionarplantas_snd,1,false)
scale=0.5

