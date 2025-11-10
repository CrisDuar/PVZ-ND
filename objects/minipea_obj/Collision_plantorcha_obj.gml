if tw_obj!=other.id and other.sprite_index != plantorcha2_spr{
    with(instance_create(x,y,minifireball_obj)){
        vspd=other.vspd
        hspd=other.hspd
        yy=other.yy
    }
instance_destroy();
}

