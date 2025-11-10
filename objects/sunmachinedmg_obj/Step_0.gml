depth=-y-10;

if (collision_rectangle(305,284,1055,423,self,false,false)
and __background_get( e__BG.Index, 0 )=poolday_bg)
or (collision_rectangle(x-40,y-10,x-10,y+30,charco_obj,false,false)){
    if water=false{
        image_alpha=0
        x-=20
        audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))
        with(instance_create(x,y+5,tierra1_obj)){sprite_index=agua1_spr}
        with(instance_create(x,y+5,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
        instance_create(x,y,aguaex_obj)
        water=true
    }
}else{
    if water=true{
        x-=20
        with(instance_create(x,y+5,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
        instance_create(x,y,aguaex_obj)
        audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))
        image_alpha=0
        water=false
    }
}

if hspeed<0 hspeed+=0.05
if !audio_is_playing(t) {image_alpha-=0.05; image_index=3}
if image_alpha<=0 instance_destroy();

