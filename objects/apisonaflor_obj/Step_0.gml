event_inherited();

//atacar
if fase!=0 and fase!=3 and image_alpha>0{
    maxhp=5000
    vida=5000
    mask_index=squashnohit_spr
}

var proceed = false;

if instance_exists(eatfather_obj){

    if (atk_timer > 0){
    
        atk_timer--
    }else{
        
        var n = 1;
        while(n <= instance_number(eatfather_obj)){
            
            var _zom = instance_nth_nearest(x, y, eatfather_obj, n)
        
            with(_zom){ //Checar si alguna planta pasa el filtro para que pueda disparar
                if point_in_rectangle(x,y,other.minl,other.y-15,other.maxl,other.y+15){
                
                    if object_index!=beachballdrop_obj
                    and object_index!=trashcan_obj
                    and object_index!=zombieglobo_obj
                    and sprite_index!=zombiepole1_spr
                    and sprite_index!=zombiepole2_spr
                    and sprite_index!=zombiepolejump1_spr
                    and sprite_index!=zombiepolejump2_spr
                    and sprite_index!=rocketfire1_spr
                    and sprite_index!=rocketfire2_spr
                    and mask_index!=nocol_spr
                    {
                        proceed = true;
                        other.obj=id
                    }
                }
            }
            
            n++
            if (proceed) break;
        }

        atk_timer = 30;
    }
}else{

    atk_timer = 90;
}


if (proceed and atack==false){
    atack=true
    xx = obj.x
    
    image_index=0
    if (xx>=x) sprite_index = apisonaflor2_spr else sprite_index = apisonaflor3_spr
    maxhp=5000
    vida=5000
    audio_play_sound(squash1_snd,1,false)
    
}

if atack==true{
    if image_index>=image_number-2{
        img=0
    }
}

switch(fase){
    
    case 0:
        if (t < 60*1.5){
            if (atack) t++
            
        }else{
            fase=1
            img=0
            
            image_yscale = 1.2
            image_xscale = 0.9
            
            if instance_exists(obj) xx = obj.x;
            
            t = 0;
        }
    break


    case 1:
        candrown=false
        depth=-y-150;
        sprite_index=squashnohit_spr
        
        if image_yscale<1.475{
        
            ///y -= abs(((ystart - 120) - y)/(5 + 5*freeze))
            yy -= abs((120 + yy)/(5 + 5*freeze))
            x+=(xx-x)/(5+5*freeze)
            image_yscale+=0.025
            
        }else{
            
            if (t < 60*0.25){
                t++
                
            }else{
                fase = 2
                ytop = yy - 1
                
                t = 0;
            }
        }
    break
    
    case 2:
        sprite_index=squashnohit_spr

        if yy<0{
            candrown=false
            yy += min(abs(yy - ytop),30)
            depth=-y-150;
            
        }else{
            with(instance_create(x,y-30,squasharea_obj)){image_yscale=0.65}
            candrown=true
            
            if (collision_rectangle(x-40, y-25, x+40, y+5, charco_obj, false, false)) event_perform(ev_collision,charco_obj);
            fase=3
        }
    break
    
    case 3:
        sprite_index=squashnohit_spr
        candrown=true
        
        if (sfx){
            audio_play_sound(squash2_snd,1,false)
            sfx = false;
        }
    
        if image_yscale>0.5{
            image_yscale -= 0.25;
            image_xscale += 0.125
        }else{
            image_alpha -= 0.1
            if image_alpha <= 0 vida = 0;
        }
    break
}

