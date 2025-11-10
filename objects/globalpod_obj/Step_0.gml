depth=-y-30

if sudden_death{
    activada=true
    if x>600{
        if !audio_is_playing(podadora_sd_snd) audio_play_sound(podadora_sd_snd,1,false)
        instance_create(x,y-20,destroygrave_obj)
        instance_destroy();
    }
}

if activada=true{
    sh=1
    if hspeed<10 hspeed+=1
    
    //logro
    with(logros_obj){mower_care = false}
    
}else if instance_exists(zombispawn_obj){
    x=260
    if ignr_y==false y=get_closest_row(y)
    
    if (audio_is_playing(newplant_snd) or audio_is_playing(finalprize_snd)) and control_obj.multijugador=false and room!=iplant_rm{
        if timer<room_height timer += 8*dlt
        
        if timer>=y{
            audio_sound_pitch(audio_play_sound(sol_snd,1,false),control_obj.sunpitch)
            control_obj.sunpitch += 0.25
            global.dinero+=valor
            with(instance_create(x+32,y+38,moneymove_obj)){sprite_index=other.sprite; value=other.valor}
            instance_destroy();
        }
    }
}

if global.iniciogame=false
{image_alpha=1}
else
{
if (x+sprite_width-sprite_xoffset)<(__view_get( e__VW.XView, 0 ))
|| (x-sprite_xoffset)>(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ))
|| (y+sprite_height-sprite_yoffset)<(__view_get( e__VW.YView, 0 ))
|| (y-sprite_yoffset)>(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ))
{
 instance_destroy();
}
}

if (collision_rectangle(305,284,1055,423,self,false,false)
and __background_get( e__BG.Index, 0 )=poolday_bg)
or (collision_rectangle(x-40,y-10,x-10,y+30,charco_obj,false,false)){
    if water=false{
        image_alpha=0
        audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))
        with(instance_create(x,y+20,tierra1_obj)){sprite_index=agua1_spr}
        with(instance_create(x,y+20,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
        instance_create(x,y+20,aguaex_obj)
        water=true 
    }
}
else{
    if water=true{
        with(instance_create(x,y+20,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
        instance_create(x,y+20,aguaex_obj)
        audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))
        image_alpha=0
        water=false
    }
}

if image_alpha<1 image_alpha+=0.05

