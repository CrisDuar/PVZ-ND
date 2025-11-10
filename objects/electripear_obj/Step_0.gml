event_inherited();

if sprite_index=imgshot{
if image_index>=4 and disparando=false{
audio_sound_pitch(audio_play_sound(zapear3_snd, 1, false),random_range(0.8,1.2));
with(instance_create(x,y - 10,electro_obj)){direction=90; _angle=direction}
with(instance_create(x,y,electro_obj)){direction=270; _angle=direction}
disparando=true
}

if image_index>=image_number-0.5{
sprite_index=imgidle
image_index=0
image_speed=0.16
disparando=false
}
}


//EXPLOSION

if image_index>=image_number-0.5 and act==true{img=0}

if vida<=50 and act==false{
    maxhp=1000
    vida=1000
    if sprite_index!=electripear1_spr{
        cadencia=0
        disparando=false
        image_index=0
        sprite_index=electripear1_spr
        audio_play_sound(zapear1_snd,1,false)
    }
    act=true
}

if timer<=0{  
    with(instance_create(x+5,y-20,powie_obj)){sprite_index=shock_spr}

    repeat(3){pera_attack()}
    create_explosion(x,y,4,1.8,0.4,zapear2_snd)
    vida = 0;
}
else if act == true{
    timer--
}

