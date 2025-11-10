switch(gravetype){
case grave1_obj:case grave5_obj:sprite_index=animtumba1_spr;break
case grave2_obj:sprite_index=animtumba2_spr;break
case grave3_obj:sprite_index=animtumba3_spr;break
case grave4_obj:sprite_index=animtumba4_spr;break
case grave6_obj:sprite_index=animtumba5_spr;break
case soulgrave_obj:sprite_index=animtumba6_spr;break
case zomgrave_obj:sprite_index=tumbamulti0_spr;break
case drheals_obj:sprite_index=drhealsanim_spr;break
}


//WATER
if (collision_rectangle(305,284,1055,423,self,false,false)
and __background_get( e__BG.Index, 0 )=poolday_bg)
or (place_meeting(x,y,charco_obj)){
    if water=false{
        image_alpha=0
        if (global.videoq > 0) create_dirt(1)
        audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))
        instance_create(x+10,y-15,aguaex_obj)
        water=true 
    }
}
else{
    if water=true{
        with(instance_create(x+15,y-15,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
        instance_create(x+10,y-15,aguaex_obj)
        audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))
        image_alpha=0
        water=false
    }
}

depth=-y+60
image_speed=0.25
if image_index>image_number-1{
with(instance_create(x,y,gravetype)){water=other.water; spawned=other.inispawned}
instance_destroy();
}

if image_alpha<1{
image_alpha+=0.05
}

if setpos==false{
    y=get_closest_row(y)
    x=instance_nearest(x,y,pastoinv_obj).x-10
    create_dirt(water);
    setpos=true
}

