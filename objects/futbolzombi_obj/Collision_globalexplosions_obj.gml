if soltarproteccion = false{
    with(instance_create(x-25,y-102+30*water,popdrop_obj)){
        w=other.water
        image_blend=other.image_blend;
        point=other.y;
        sprite_index=futbolhelmet1_spr
        depth=other.depth-10
    }
}

if soltarbrazo=false{
    with(instance_create(x,y,quemado_obj)){
        water=other.water
    }
}else{
    with(instance_create(x,y,quemado_obj)){
        water=other.water
        sprite_index=zombiequemado3_spr
    }
}

zombiedrop(false)
instance_destroy();

