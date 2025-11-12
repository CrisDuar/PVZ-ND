event_inherited();

if soltarproteccion == false{
    with(instance_create(x-25,y-102+30*water,popdrop_obj)){
        w=other.water
        image_blend=other.image_blend;
        point=other.y;
        sprite_index=cubo_spr
        depth=other.depth-10
    }
}

