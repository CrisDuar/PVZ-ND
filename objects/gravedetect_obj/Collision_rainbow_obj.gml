if drop_part{
    repeat(3){
        with(instance_create(x,y-48,nutparticle_obj)){
            sprite_index=zomgravepart_spr
        }
    }
}
image_alpha=0.5
vida-=100

