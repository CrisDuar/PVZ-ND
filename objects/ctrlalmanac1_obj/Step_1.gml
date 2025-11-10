yy = __view_get( e__VW.YView, 0 ) + 345

if __view_get( e__VW.YView, 0 )>0{
    if string(string_delete(sprite_get_name(unitsprite),6, 6)) != "grave"{
        if subimage<sprite_get_number(unitsprite){subimage += 0.16}else{subimage=0}
    }else{
        subimage=0
    }
    
    if (unitsprite==plantorcha1_spr or unitsprite==peadis2_spr){
        part_particles_create(part, xx-random_range(-10,12), yy-140, p1, irandom_range(1,2));
    }else if unitsprite==ghostpepper1_spr 
    or unitsprite==rotinabo1_spr
    or unitsprite==nenufar_spr 
    or unitsprite==garlicdrone_spr 
    or unitsprite==garlicds_spr 
    or unitsprite==tanglekelp_spr{
        if up<360 up+=2 else up=0
        sine_yy = 5*sin(degtorad(up))
    }else{
        sine_yy=0; up=0
    }
}

