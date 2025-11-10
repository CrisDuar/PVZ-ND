event_inherited();

if soltarproteccion==false{
    with(instance_create(x-27,y-105+30*water,popdrop_obj)){
        w=other.water
        sprite_index=gorra_spr
        image_blend=other.image_blend
        depth=other.depth-10
        point=other.y;
    }
}

