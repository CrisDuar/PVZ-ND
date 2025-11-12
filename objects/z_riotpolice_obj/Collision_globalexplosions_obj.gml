//soltar la puerta
if dropdoor=false{
    drop(x-40, y-30+30*water, copshield_spr, 0, true, image_blend, y, depth-10)
}

//Soltar el casco
if drophelmet=false{
    drop(x-25, y-92+30*water, cophelmet_spr, 0, true, image_blend, y, depth-10)
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

