event_inherited();

if (can_sprite==true){
    if (sleep==true){
        if (sprite_index==spr_prod1) sprite_index=spr_prod2;
        spr_prod=spr_prod2;
        
        if (sprite_index!=spr_prod) sprite_index=spr_sleep
        if (can_tired==true) img=local_img*0.8
    }else{
         if (sprite_index==spr_prod2) sprite_index=spr_prod1;
        spr_prod=spr_prod1;
        
        img=local_img
        if (sprite_index!=spr_prod) sprite_index=spr_idle
    }
}

if global.iniciogame=true and global.nivelterminado=false and global.gameover=false and room!=izombie_rm{
    if t>0{
        var n = 1
        if (sleep==true){
            if (can_tired==true) n=0.8 else n=0
        }
        
        t-=n
    }else{
        image_index=0
        sprite_index=spr_prod
    
        t=t_sun
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

logros_obj.low_budget = false;

