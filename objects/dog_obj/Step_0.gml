if (instance_exists(owner)){
    vida = maxhp;
    caneat = false;
    mask_index = nocol_spr
    
    var _dist = abs(x - owner.x)
    
    if (_dist >= 80){
        walkspeed=-0.25
        imagespeed2=0.15
        
        owner.walkspeed=-0.5
        owner.imagespeed2=0.35
    }
    
    if (_dist <= 10){
        imagespeed2=0.25
        walkspeed=-0.6
        
        owner.walkspeed=-0.25
        owner.imagespeed2=0.25
    }
    
    if (owner.hspeed == 0){
        if (state == states.walk){
            image_index = 0;
            state = states.down
        }
    }else{
        if (state == states.idle){
            image_index = 0;
            state = states.up
        }
    }
    
}else{

    if (swap <= 20){
        swap = 100
        
        if (y == zombispawn_obj.f6){
            garlic_yy = get_closest_row(y-90)
        }else if y = zombispawn_obj.f1{
            garlic_yy = get_closest_row(y+90)
        }else{
            garlic_yy = get_closest_row(y+choose(-90,90))
        }
    }    

    mask_index = sprite_index;
    
    switch(behavior){
        case 0: //Just run
            if (state == states.walk) state = states.run;
            walkspeed=-1.1
            imagespeed2=0.25
            caneat = true;
        break;
        
        case 1: //Dig a hole
            if (state == states.walk) state = states.run;
            walkspeed=-1.1
            imagespeed2=0.25
            caneat = true;
            
            var tile = instance_nearest(x,y,pastoinv_obj)
            var _dist = abs(x - tile.x)
            
            if (start_dig_t < 60 * 10){
                start_dig_t++
                
            }else if (_dist <= 10){
                
                var cont = false
                
                with(tile){
                    if (distance_to_object(typeplant_obj)>0 
                    and distance_to_object(pumpkin_obj)>0
                    and distance_to_object(crater1_obj)>0
                    and distance_to_object(animgrave_obj)>0
                    and distance_to_object(gravedetect_obj)>0){
                        cont = true;
                    }
                }
                
                if (cont){
                    state = states.dig;
                    start_dig_t = 0
                }
            }
        break
        
        case 2: //Poison plants
            imagespeed2=0.25
            
            if (state != states.poison){
                if (collision_rectangle(x-10, y-15, x-100, y+5,typeplant_obj, false, false)
                or collision_rectangle(x-10, y-45, x-100, y+5,pumpkin_obj, false, false)){
                    state = states.walk;
                    walkspeed=-0.6
                    caneat = false;
                    
                    if (check_zombie_eat(typeplant_obj) or check_zombie_eat(pumpkin_obj)) and state != states.poison and y==garlic_yy{
                        image_index = 0;
                        state = states.poison;
                    }
                }else{
                    walkspeed=-1.1
                    caneat = false;
                    state = states.run;
                }
            }
            
        break
        
    }
}

//ESTADOS Y ANIMACIONES

switch(state){
    case states.walk:
        if (comiendo) sprite_index = dog3_spr else sprite_index = dog1_spr;
    break
    
    case states.run:
        if (comiendo) sprite_index = dog3_spr else sprite_index = dog2_spr;
    break
    
    case states.down:
        sprite_index = dog4_spr
        if (image_index > image_number - 1) state = states.idle
        walkspeed=0
    break
    
    case states.up:
        sprite_index = dog5_spr
        
        if (image_index > image_number - 1){
            state = states.walk
            walkspeed=-0.25
            imagespeed2=0.15
        }
        
        walkspeed=0
    break
    
    case states.idle:
        sprite_index = dog0_spr
        walkspeed=0
        
        if (!instance_exists(owner)){
            image_index = 0
            state = states.up;
        }
    break
    
    case states.dig:
        walkspeed=0
        start_dig_t = 0
        if (comiendo){
            sprite_index = dog3_spr
        }else{
            sprite_index = dog6_spr
        
            if (dig_t < 60*3){
                dig_t++
            }else{
                dig_t = 0
                
                if (crater == noone){
                    var tile = instance_nearest(x,y,pastoinv_obj)
                    crater = instance_create(tile.x, tile.y+15, crater1_obj)
                    
                    with(crater){
                        image_index = 1
                        dis = true;
                    }
                }else{
                    with(crater){
                        image_index = 0
                    }
                    crater = noone
                    state = states.run
                }
            }
        }
    break
    
    case states.poison:
        sprite_index = dog7_spr
        imagespeed2=0.125
        
        if (image_index > image_number - 1){

            with(instance_create(x-40,y-55,herbicida_obj)){
                image_alpha = 0
                xx_lim=10
                spawn=9999
            }
            caneat = true;
            state = states.walk
            behavior = choose(0, 1)
        }
        
        walkspeed=0
    break
}

//morir
if (vida <= 0 or global.nivelterminado){
    with(instance_create(x,y,zombieded_obj)){sprite_index=dogded_spr; image_blend=other.image_blend; water=other.water}
    zombiedrop(money)
    instance_destroy();
}

event_inherited();

