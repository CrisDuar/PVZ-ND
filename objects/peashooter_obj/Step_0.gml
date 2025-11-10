event_inherited();

if disfraz==2{
    if freeze==false and control_obj.rain==false{
        if glow_alpha<1 glow_alpha+=0.05
        part_particles_create(part, x-random_range(-10,12), y-50, p1, irandom_range(1,2));
        /*if sprite_index==imgshot sprite_index=peashootdis2_spr
        if sprite_index==imgidle sprite_index=peadis2_spr
        imgidle=peadis2_spr
        imgshot=peashootdis2_spr*/
    }else{
        if glow_alpha>0 glow_alpha-=0.05
        timefreeze--
        /*if sprite_index==imgshot sprite_index=peashooting_spr
        if sprite_index==imgidle sprite_index=peashooter_spr
        imgshot=peashooting_spr
        imgidle=peashooter_spr*/
    }
    
    if glow<360{
        glow+=0.5
    }else{
        glow=0
    }
    
}

if sprite_index=imgshot{
    if image_index>=8 and disparando=false{
        audio_play_sound(choose(pea_shoot_snd,pea_shoot2_snd), 1, false);
        if disfraz=1{
            instance_create(x+25,y-40,powerpea_obj)}
        else if disfraz=2 and freeze==false and control_obj.rain==false{
            part_particles_create(control_obj.part, x+25+random_range(-3,3), y-40+random_range(-3,3), control_obj.p4, 10);
            instance_create(x+25,y-40,fireball_obj)
        }else{
            instance_create(x+25,y-40,pea_obj)
        }
        disparando=true
    }
    
    if image_index>=image_number-0.5{
        sprite_index=imgidle
        image_index=0
        image_speed=0.16
        disparando=false
    }
}


/* */
/*  */
