if tw_obj!=other.id and other.sprite_index != plantorcha2_spr{
    var temp_obj = other.id
    
    with(instance_create(x,y,pea_obj)){
        tw_obj=temp_obj
        vspd=other.vspd
        hspd=other.hspd
        
        spd = other.spd
        spd_max = other.spd_max
        direction = other.direction
        
        yy=other.yy
    }
    instance_destroy();
}

