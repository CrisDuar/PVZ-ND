image_alpha=0.5
repeat(3){
    with(instance_create(x,y-48,nutparticle_obj)){
        sprite_index=zomgravepart_spr
    }
}
    
if collision_line(x-75, y, x, y,zomgrave_obj, false, true) vida-=10 else vida-=20


