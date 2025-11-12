event_inherited();
if soltarproteccion = false{
    with(instance_create(x-40,y-30+30*water,popdrop_obj)){
        w=other.water
        sprite_index=screendoor_spr;
        image_blend=other.image_blend
        point=other.y
        depth=other.depth-10
    }
}

