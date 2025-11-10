event_inherited();

//ESTADOS
switch(state){
    case 0:
        walkspeed=-0.9
        imagespeed2=0.25
        caneat=false
        canwater=true
        
        if (collision_rectangle(x-30,y-30,x-70,y+10,typeplant_obj,false,false)
        or collision_rectangle(x-30,y-30,x-70,y+10,nenufar_obj,false,false)
        or collision_rectangle(x-30,y-30, x-70,y+10,pumpkin_obj, false, false) and x>382) or (x<=450 and room==izombie_rm){
            state=1
            image_index=0
        }
        
        //SPRITES
        
        if (vida > 30) sprite_index=zombiepole1_spr else sprite_index=zombiepole2_spr;
        
        
    break

    case 1:
        walkspeed=0
        imagespeed2=0.25
        caneat=false
        
        //SPRITES
        if vida>30{sprite_index=zombiepolejump1_spr}else{sprite_index=zombiepolejump2_spr}
        
        if (image_index>8) frozenstop = 0;
        
        
        if image_index>=10{
            //chocarse con la nuez cascara rabias
            
            if image_index<=15{
                if collision_rectangle(x-(image_index-8)*16,y-30,x-80,y+10,tallnut_obj,false,false){
                    x -= (image_index - 8)*16
                    instance_create(x-20,y-80,destroygrave_obj)
                    audio_play_sound(mazo1_snd,1,false)
                    state=2
                    
                    //SPRITES
                    if vida>30{
                        sprite_index=zombiepolewalk1_spr
                    }else{
                        sprite_index=zombiepolewalk2_spr
                    }
                }
            }
            
            if water==true{
                if (__background_get( e__BG.Index, 0 )==poolday_bg and !point_in_rectangle(x-160,y,290,300,1075,427)) and !collision_rectangle(x-160,y-10,x-140,y+30,charco_obj,false,false){
                    canwater=false
                    water=false
                }
            }else{
                if (__background_get( e__BG.Index, 0 )==poolday_bg and point_in_rectangle(x-160,y,290,300,1075,427)) or collision_rectangle(x-160,y-10,x-140,y+30,charco_obj,false,false){
                    canwater=false
                    water=true
                }//eatfather_obj
            }
        }
        
        
        if sound=false and image_index>=11{
            sound=true
            audio_play_sound(pertiga_snd,1,false)
        }
        
        if image_index>image_number-1{
            state=2
            
            //SPRITES
            if vida>30{
                if comiendo=false{
                    sprite_index=zombiepolewalk1_spr
                }else{
                    sprite_index=zombiepoleeat1_spr
                }
            }else{
                if comiendo=false{
                    sprite_index=zombiepolewalk2_spr
                }
                else{
                sprite_index=zombiepoleeat2_spr
                }
            }
            
            x-=160
        }
    break

    case 2:
        canwater=true
        walkspeed=-0.25
        imagespeed2=0.18
        caneat=true
        
        //SPRITES
        if vida>30{
            if comiendo=false{
                sprite_index=zombiepolewalk1_spr
            }else{
                sprite_index=zombiepoleeat1_spr
            }
        }else{
            if comiendo=false{
                sprite_index=zombiepolewalk2_spr
            }
            else{
            sprite_index=zombiepoleeat2_spr
            }
        }
    break
}

