depth=-y+60
if setpos==false{
    y=get_closest_row(y)
    x=instance_nearest(x,y,pastoinv_obj).x-10
    setpos=true
}

if global.gameover=true{
image_speed=0
}

if image_alpha<1{
image_alpha+=0.05
}

if object_index!=soulgrave_obj
and object_index!=zomgrave_obj
and object_index!=grave4_obj
and object_index!=drheals_obj{
    if vida>500{image_index=0}
    else if vida>200{image_index=1}
    else{image_index=2}
}
if room!=izombie_rm{
    if instance_exists(finalwave_obj) and canspawn=true and spawned=false{
    alarm[0]=room_speed*random_range(1,3)
    spawned=true
    }
}

if !instance_exists(finalwave_obj) spawned=false

if vida <=0 and object_index!=signclaire_obj{
    audio_play_sound(choose(piedraded_snd,piedraded2_snd),1,false)
    instance_create(x+10,y-50,destroygrave_obj)
    instance_destroy();
}

//WATER

if (collision_rectangle(305,284,1055,423,self,false,false)
and __background_get( e__BG.Index, 0 )=poolday_bg)
or (place_meeting(x,y,charco_obj)){
    if water=false{
        image_alpha=0
        audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))
        with(instance_create(x+10,y-15,tierra1_obj)){sprite_index=agua1_spr}
        with(instance_create(x+10,y-15,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
        instance_create(x+10,y-15,aguaex_obj)
        water=true 
    }
}
else{
    if water=true{
        with(instance_create(x+10,y-15,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
        instance_create(x+10,y-15,aguaex_obj)
        audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))
        image_alpha=0
        water=false
    }
}

