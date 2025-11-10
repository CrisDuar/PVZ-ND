if (inmo == false){
    with(instance_create(x,y,burnedplant_obj)){
        
        if (other.burned_sprite == noone){
            sprite_index=other.sprite_index
        }else{
            sprite_index=other.burned_sprite
        }
        image_index=other.image_index
        depth=other.depth;
    }
    
    vida=0
}

