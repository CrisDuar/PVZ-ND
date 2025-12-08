event_inherited();

if vida>200{
    spr_idle=tumbamulti1_spr
    spr_prod=tumbamulti2_spr
}else if vida>100{
    if sprite_index==tumbamulti1_spr sprite_index=tumbamulti3_spr 
    if sprite_index==tumbamulti2_spr sprite_index=tumbamulti4_spr 
    spr_idle=tumbamulti3_spr
    spr_prod=tumbamulti4_spr
}else{
    if sprite_index==tumbamulti3_spr sprite_index=tumbamulti5_spr 
    if sprite_index==tumbamulti4_spr sprite_index=tumbamulti6_spr 
    spr_idle=tumbamulti5_spr
    spr_prod=tumbamulti6_spr
}

image_speed=local_img
if (sprite_index!=spr_prod) sprite_index=spr_idle

if global.iniciogame and global.nivelterminado=false and global.gameover=false{
    if (room==izombie_rm or (control_obj.multijugador and global.vsgamemode!=2)){
        if t>0{
            t-=1
        }else{
            image_index=0
            sprite_index=spr_prod
        
            t=t_sun
        }
    }
    
    if (global.vsgamemode==2 and control_obj.multijugador){
        if tvs>0{
            tvs--
        }else{
            alarm[0]=60*random_range(1,3)
            tvs=irandom_range(30,60)*60
        }
    }
}

if sprite_index=spr_prod{
    if image_index>=sun_frame and sun=false{
        event_user(1)
        sun=true
    }
    
    if image_index>=image_number-0.5{
        sprite_index=spr_idle
        image_index=0
        sun=false
    }
}
