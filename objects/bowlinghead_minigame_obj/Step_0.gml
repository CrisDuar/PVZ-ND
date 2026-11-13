if hit==true{
    if speed>0{
        speed-=0.5
    }else{
        if nodispawn==false{
            image_alpha-=0.05
        }else{
            image_alpha=1
        }
    }
    
    if image_alpha<=0{
        if instance_exists(zombispawn_obj){
            zombispawn_obj.xx=1100
            zombispawn_obj.yy=y
        }
        instance_destroy();
    }
}

if hitnut==true and x>1120{
    if instance_exists(zombispawn_obj){
        zombispawn_obj.xx=1100
        zombispawn_obj.yy=y
    }
    instance_destroy();
}

if nodispawn=false{
    depth=-y-20
}else{
    depth=-99999
}
if image_alpha<1 and hit==false{image_alpha+=0.05}

if direction<180 or direction>270{
    image_angle-=speed
}else{
    image_angle+=speed
}

if __background_get( e__BG.Index, 0 )=poolday_bg{
if collision_rectangle(305,334,1055,403,self,false,false)
and distance_to_object(nenufar_obj)>20{
audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))
with(instance_create(x,y,tierra1_obj)){sprite_index=agua1_spr}
with(instance_create(x,y,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
instance_create(x,y,aguaex_obj)
instance_destroy()
}
if y<73{direction=330}
if y>640{direction=45}
}
else{
if y<73{direction=330}
if y>597{direction=45}
}

if global.gameover=true and nodispawn=false{
    instance_create(x,y,destroygrave_obj)
    instance_destroy();
}

