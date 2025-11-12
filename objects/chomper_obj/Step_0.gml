event_inherited();
depth=(-y+5)+(x/150)

switch(state){
    case 0:
        if sprite_index==imgshot and global.gameover==false{
            if image_index>=4 and disparando=false{
                audio_play_sound(chomper2_snd, 0.3, false);
                instance_create(x,y-50,goop_obj)
                disparando=true
            }
        
            if image_index>image_number-1{
                sprite_index=imgidle
                image_index=0
                disparando=false
            }
        }

        obj = collision_line_first(x,y-10,x+170,y-10,eatfather_obj,true,false)
        
        if obj and sprite_index=chomper1_spr{
            t=false
            image_index=0
            state=1
        }
    break

    case 1:
        sprite_index=chomper2_spr
        
        if image_index>=7 and t=false{
            audio_play_sound(chomper1_snd,1,false)
            t=true
            s=0
            obj = collision_line_first(x,y-10,x+170,y-10,eatfather_obj,true,false)
            
            if obj!=noone{
                if obj.object_index==beachballdrop_obj or obj.object_index==trashcan_obj or obj.object_index==z_zomboni_obj or obj.object_index==caja_obj or obj.object_index==signclaire_obj{s=0}//Zombis que no puede comer
                else if obj.object_index==z_imp_obj{s=2; timer=room_speed*5}//Zombidito
                else{s=2; timer=room_speed*15}//Otros zombis
                
                with(obj){
                    if object_index!=z_zomboni_obj and object_index!=caja_obj and (object_index!=z_coffin_obj or vida<=100){
                        instance_create(x,y-60,destroygrave_obj);
                        zombiedrop(money);
                        instance_destroy();
                    }else if object_index==z_coffin_obj and vida>100{
                        vida=100
                    }else{
                        vida-=250; image_alpha=0.5
                    }
                }
            }
        }
        
        
        if image_index>image_number-1{
            image_index=0
            if s==0 sprite_index=chomper1_spr
            state=s
            s=0
        }
    break

    case 2:
        sprite_index=chomper3_spr
        if timer>0{timer--}else{image_index=0; timer=0; state=3;}
    break
    
    case 3:
        sprite_index=chomper4_spr
        if image_index>image_number-1{sprite_index=chomper1_spr; image_index=0; state=0}
    break
}

