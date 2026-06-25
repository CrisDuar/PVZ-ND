event_inherited();

if zom=true and shoot=false and floor(image_index)>=4{
    if heavy=false{instance_create(x,y-50,soul_obj)}else{instance_create(x,y-50,soul2_obj)}
    shoot=true
}

if (zom and floor(image_index) >= image_number - 1){ 
    zom=false
    shoot=false
    heavy=false
    image_speed = 0;
    image_index = 0;
}

if (zom){
    useDegradeSprites = false;
    image_speed = 0.16;
    
    if (vida > maxVida * (2/3)){
        sprite_index=soulgraveact1_spr
    }else if (vida > maxVida * (1/3)){
        sprite_index=soulgraveact2_spr
    } else{
        sprite_index=soulgraveact3_spr
    }

}else{
    image_speed = 0;
    sprite_index = soulgrave_spr;
    useDegradeSprites = true;
}

