event_inherited();
if vida<maxhp and sleep=false{
    vida+=0.1
    timer--
    if timer<=0{
        instance_create(x+random_range(-25,25),y-60,liveparticle_obj);
        timer=60
    }
}


if (disfraz == 0){ //Instant-use version
    
    if (sleep){
        sprite_index = healershroom3_spr
        
        sleep_time--;
        
        if (sleep_time <= 0){
            sleep = false;
            image_index = 0;
        }
        
    }else{
        sprite_index = healershroom_explo_spr
        
        if (floor(image_index) >= 8){
            
            var _list = ds_list_create();
            var _num = collision_rectangle_list(x-110, y-140, x+110, y+115, typeplant2_obj, false, true, _list, false)
            
            var _hp_div = 2 + (2 * sleep_debuff)
            
            if (_num > 0){
                for (var i = 0; i < _num; ++i) {
                    
                    with(_list[| i]){
                        
                        if (vida < maxhp or poison){
                            vida += floor(maxhp / _hp_div)
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
                }
            }
            with(instance_create(x,y-20,luzcafe_obj)){sprite_index=luzhealer_spr}
            instance_create(x,y-20,destroygrave_obj)
            audio_play_sound(explocherry_snd, 1, false);
            audio_play_sound(coffee2_snd, 1, false);
            ds_list_destroy(_list)
            
            with(instance_create_depth(x,y, -99999, powie_obj)){
                sprite_index = healer_bloom_spr;
            }
            
            vida = 0;
        }
    }
}else if (disfraz == 1){ //Medic Shroom costume
    
    if (!global.nivelterminado and global.iniciogame and !global.gameover){
        
        if (sleep){
            sprite_index = spr_sleep;
            exit;
        }
        
        if t_atk>0{
            t_atk--
        }else{
            var _proceed=false
            
            
            var _list = ds_list_create();
            var _num = collision_rectangle_list(x-110, y-140, x+110, y+115, typeplant2_obj, false, true, _list, false)
            
            if (_num > 0){
                
                _proceed = false;
            }else{
                for (var i = 0; i < _num; ++i) {
                    
                    with(_list[| i]){
                        
                        _proceed = true;
                        break;
                    }
                }
            }
        
            if (_proceed){
                ds_list_copy(z_list, _list)
                z_num = _num
                image_index=0
                sprite_index=spr_atk
                
                t_atk=60*t_atk_ttl
            }else{
                t_atk=60*t_atk_ttl*0.25
            }
            
            ds_list_destroy(_list)
        }
        
        if (sprite_index == spr_atk){
    
            if (floor(image_index) >= 8 and disparando == false){
            
                for (var i = 0; i < z_num; ++i) {
                       
                    with(z_list[| i]){
                           
                        if (vida < maxhp or poison){
                            vida += floor(maxhp * 0.1)
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
                }
                
                audio_play_sound(coffee2_snd,1,false)
                disparando=true
                ds_list_clear(z_list)
                z_num = 0;
           }
           
           
           if image_index>=image_number-0.5{
               sprite_index=spr_idle
               image_index=0
               image_speed=0.16
               disparando=false
           }
        }
    }
}
/*

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
                
                t_atk=60*t_atk_ttl
            }else{
                t_atk=60*t_atk_ttl*0.25
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

