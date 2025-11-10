event_inherited();
if vida<maxhp and sleep=false{
    vida+=0.1
    timer--
    if timer<=0{instance_create(x+random_range(-25,25),y-60,liveparticle_obj); timer=room_speed}
}

//image_blend=make_colour_rgb(vida*2.55,vida*2.55,vida*2.55)

if sleep==false{
    if global.nivelterminado=false and global.iniciogame=true and global.gameover=false{
        if t_atk>0{
            t_atk--
        }else{
            var proceed=false
            
            if (disfraz == 0){
                with(typeplant2_obj){
                    if collision_rectangle(other.x-110,other.y-140,other.x+110,other.y+115,self,false,false) and (vida<maxhp or poison == true){
                        proceed=true
                        break;
                    }
                }
            }else if (disfraz == 1){
                with(typeplant2_obj){
                    if collision_rectangle(other.x,other.y-15,other.x+190,other.y+15,self,false,false) and (vida<maxhp or poison == true){
                        proceed=true
                        break;
                    }
                }
            }
        
            if (proceed){
                image_index=0
                sprite_index=spr_atk
                
                t_atk=room_speed*t_atk_ttl
            }else{
                t_atk=room_speed*t_atk_ttl*0.25
            }
            
            
        }
    }

    if (sprite_index == spr_atk){
    
        if (image_index>=8 and disparando == false){
        
            with(typeplant2_obj){
            
                if ((other.disfraz==0 and collision_rectangle(other.x-110,other.y-140,other.x+110,other.y+115,self,false,false))
                or (other.disfraz==1 and collision_rectangle(other.x,other.y-15,other.x+190,other.y+15,self,false,false)))
                and (vida < maxhp or poison){
                
                    vida += floor(maxhp/20)
                    
                    if (vida>maxhp) vida=maxhp
                    poison=false
                    poisontime=0
                    particle=0
                    image_blend=c_white
                    with(instance_create(x,y-20,luzcafe_obj)){sprite_index=luzhealer_spr}
                    instance_create(x,y-20,destroygrave_obj)
                    with(instance_create(x,y-20,liveparticle_obj)){hspeed=0}
                }
            }
            audio_play_sound(coffee2_snd,1,false)
            disparando=true
        }
        
        
        if image_index>=image_number-0.5{
            sprite_index=spr_idle
            image_index=0
            image_speed=0.16
            disparando=false
        }
    }
}else{
    sprite_index=spr_sleep
}

