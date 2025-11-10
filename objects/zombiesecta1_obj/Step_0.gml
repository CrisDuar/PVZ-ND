event_inherited();

if global.gameover=false{
    if atackcall<1200{
        if stop=false and x<=1115{
            atackcall++
        }
    }else{
        atackcall=0;
        if instance_exists(typeplant_obj){
            image_index=0
            state=1
        }
    }
}

//velocidad
switch(state){
    case 0://WALKING
        if comiendo=false{sprite_index=sectario1walk_spr}else{sprite_index=sectario1eat_spr}
        walkspeed=-0.18
        caneat=true
    break

    case 1://ATTACK
        sprite_index=sectario1atack_spr
        walkspeed=0
        caneat=false
        
        if image_index>=11{
            
            if atack=false{
                if instance_exists(typeplant_obj){
                    with(instance_create(x-20,y-60,sectatomb_obj)){
                        obj = instance_nearest(x,y,typeplant_obj)
                    }
                }
                atack=true
            }
            state=2
            tiempo=60
        }
    break
    
    case 2://REST
        sprite_index=sectario1quiet_spr
        walkspeed=0
        caneat=false
        
        if stop=false tiempo--
        
        if tiempo<=0{
            state=0;
            tiempo=60
            atack=false
            caneat = true;
        }
    break
}

//morir
if vida <= 0 or global.nivelterminado=true{
    with(instance_create(x,y,zombieded_obj)){sprite_index=sectario1ded_spr; image_blend=other.image_blend; water=other.water}
    zombiedrop(money)
    instance_destroy();
}

