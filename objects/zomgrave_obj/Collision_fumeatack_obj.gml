if !collision_line(x-75, y, x, y,zomgrave_obj, false, true){
    repeat(3){
        with(instance_create(x,y-48,nutparticle_obj)){
            sprite_index=zomgravepart_spr
        }
    }
    image_alpha=0.5
    vida-=15
}

