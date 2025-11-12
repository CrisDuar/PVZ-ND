event_inherited();

if image_index>=5 and image_index<=14 and global.gameover==false{
    part_type_direction(control_obj.p15, 0, 0, 0, 0);
    part_particles_create(control_obj.part, random_range(300,1200), random(room_height), control_obj.p15, 1);
    part_type_direction(control_obj.p15, 180, 180, 0, 0);

    if snd==false{
        snd=true
        audio_play_sound(blover_snd,1,false)
    }
    
    if instance_exists(eatfather_obj){
        with(eatfather_obj){
            if object_index==z_balloon_obj{
                stop=true
                timestop=1
                x+=25
                if x>=1140 vida=0
            }else{
                var realwgth = peso/10
                var retro = clamp(3-realwgth,0,10)
                stop = sign(clamp(3-realwgth,0,10))
                timestop = stop*2
                
                if x<1100{
                    jumpwater=-1 
                    x += retro
                    if object_index=beachballdrop_obj{angle -= retro}
                }
            }
        }
    }
    
    if instance_exists(fogctrl_obj){
        with(fogctrl_obj){
            if facing==1{
                xx+=other.fogplus
                other.fogplus+=20
                timer=room_speed*20
            }
        }
    }
    
    if instance_exists(smokecloud_obj){
        with(smokecloud_obj){
            t=0
            x+=40
            
            if instance_exists(obj){
                with(obj){
                    time=dis_time
                }
            }
        }
    }
    
    with(control_obj){
        alarm[2]=room_speed*25
        wind=false
        audio_stop_sound(wind_snd)
    }
}

if image_index>=image_number-0.5{
img=0
image_alpha-=0.1
}

if image_alpha<=0{
    vida = 0;
}

