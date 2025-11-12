depth=-y-10;
sprite_index=object_get_sprite(obj);

if (obj==z_ghost_obj){
    water = false
}

if h>0{
    h=clamp(h-10,0,172)
}else{
    h=0
    if (global.videoq > 1) create_dirt(animwater)
    with(instance_create(x,y,obj)){
        image_index=other.image_index
        water=other.water
        horde_id=zombispawn_obj.h
        zombispawn_obj.horde_ttl_hp+=vida
        zombispawn_obj.horde_ttl_hp+=puertavida
        if other.w!=0{
            walkspeed=other.w
        }
    }
    instance_destroy();
}

