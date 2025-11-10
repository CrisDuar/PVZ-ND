if drop_part{
    repeat(3){
        with(instance_create(x,y-48,nutparticle_obj)){
            sprite_index=zomgravepart_spr
        }
    }
}

switch(other.image_index){
    default:
        image_alpha=0.5
        vida -= 5
    break

    case 1:
        image_alpha=0.5
        vida -= 10
    break

    case 2:
        image_alpha=0.5
        vida -= 20
    break
}

