part_type_speed(p1,speed/2,speed,0,0)
part_type_direction(p1,direction+170,direction+190,0,0)

part_particles_create(part, x, y, p1, 1)

if timer>0 timer--

if instance_exists(eatfather_obj) and timer>0 and global.gameover=false and global.nivelterminado==false{

    if instance_exists(obj){
        _dir = point_direction(x, y, obj.x, obj.y-50)
        _dist = point_distance(x, y, obj.x, obj.y-50);
        _diff = angle_difference(_dir, image_angle);
        
        
        if cooldown>0{
            speed = clamp(20/max(_dist*0.05,1),minspd,50)
            image_angle+=_diff*0.01
            cooldown--
        }else{
            speed = clamp(40/max(_dist*0.05,1),minspd*2,50)
            image_angle+=_diff*0.5
        }
        direction=image_angle;
        
        if _dist>=150{
            if speed>1{
                speed-=0.05
            }
        }
        
        
        
        if _dist<=50 and cooldown<=0{
        
            cooldown=room_speed
            
            with(obj){
            
                var proceed = true
                
                if mask_index==nocol_spr or mask_index==ghostnohit_spr{
                
                    proceed = false
                }
                
                if object_index == boss3_obj{
                    if dark_lph>=1{
                        proceed = false
                    }
                }
                
                if (proceed){
                
                    if (soltarproteccion == false) audio_play_sound(choose(hurtsnd,hurt2snd),1,false);
                    audio_play_sound(choose(pea_impact_snd,pea_impact2_snd),1,false);
                    if control_obj.invisible==false image_alpha=0.5
                    
                    
                    if puertavida>0{
                        puertavida-=other.dmg
                        
                    }else{
                        vida-=other.dmg
                        
                    }
                    
                    other.minspd=0.01
                    part_particles_create(control_obj.part, other.x, other.y, control_obj.p14, 1);
                    
                }else{
                    other.minspd=4
                    other.obj=instance_nth_nearest(x,y,eatfather_obj, 2)
                    
                    if (other.obj == id){
                    
                        timer = 0;
                    }
                }
            }
        }
    }else{
        minspd=4
        obj=instance_nearest(x,y,eatfather_obj)
    }
}else{
    part_particles_create(control_obj.part, x, y, control_obj.p14, 1);
    instance_destroy();
}

