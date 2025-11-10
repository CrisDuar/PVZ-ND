switch(global.battle_diff){
    case 0:
        control_obj.zomes=100
    break
    
    case 1:
        control_obj.zomes=75
    break
    
    case 2:
        control_obj.zomes=50
    break
}

if global.battle_map==3{
    //Rows
    zombispawn_obj.f1=152
    zombispawn_obj.f2=236
    zombispawn_obj.f3=339
    zombispawn_obj.f4=422
    zombispawn_obj.f5=527
    zombispawn_obj.f6=615
    
    instance_destroy(pastoinv_obj)
    spawn_tiles(pastoinv_obj,"","",0.85,"",0,2,70,0.99)
    spawn_tiles(pastoinv_obj,"","",0.85,true,0,2,252,0.99)
    spawn_tiles(pastoinv_obj,"","",0.85,"",0,2,448,0.99)

    instance_create(1120,152,zombiediana_obj)
    instance_create(1120,236,zombiediana_obj)
    instance_create(1120,339,zombiediana_obj)
    instance_create(1120,422,zombiediana_obj)
    instance_create(1120,527,zombiediana_obj)
    instance_create(1120,615,zombiediana_obj)
    
    if room==izombie_rm{
        instance_create(220,116,brain_obj)
        instance_create(220,196,brain_obj)
        instance_create(220,292,brain_obj)
        instance_create(220,381,brain_obj)
        instance_create(220,492,brain_obj)
        instance_create(220,576,brain_obj)
       
    }else{
        instance_create(220,116,podadora_obj)
        instance_create(220,196,podadora_obj)
        instance_create(220,292,podadora3_obj)
        instance_create(220,381,podadora3_obj)
        instance_create(220,492,podadora_obj)
        instance_create(220,576,podadora_obj)
        
        for(var i=0; i<3; i++){
            for(var j=0; j<6; j++){
                instance_create(instance_nearest(856+90*i,get_closest_row(176+100*j),pastoinv_obj).x,get_closest_row(176+90*j),spawnmultgraves_obj)
            }
        }
    }
    
}else{
    instance_create(1120,168,zombiediana_obj)
    instance_create(1120,272,zombiediana_obj)
    instance_create(1120,368,zombiediana_obj)
    instance_create(1120,480,zombiediana_obj)
    instance_create(1120,591,zombiediana_obj)
    if room==izombie_rm{
        instance_create(226,127,brain_obj)
        instance_create(226,224,brain_obj)
        instance_create(226,326,brain_obj)
        instance_create(226,434,brain_obj)
        instance_create(226,539,brain_obj)
    }else{
        instance_create(226,127,podadora_obj)
        instance_create(226,224,podadora_obj)
        instance_create(226,326,podadora_obj)
        instance_create(226,434,podadora_obj)
        instance_create(226,539,podadora_obj)
        
        for(var i=0; i<3; i++){
            for(var j=0; j<5; j++){
                instance_create(instance_nearest(856+90*i,get_closest_row(176+100*j),pastoinv_obj).x,get_closest_row(176+100*j),spawnmultgraves_obj)
            }
        }
    }
}

switch(global.battle_map){
default://dia
    if room==izombie_rm{
        instance_create(1026,280,zomgrave_obj)
        instance_create(1026,488,zomgrave_obj)
    }
    __background_set( e__BG.Index, 0, _state3_bg )
break

case 1://tarde

    if room==izombie_rm{
        if (global.battle_diff >= 1) control_obj.sunday = true
        
        instance_create(1026,172,zomgrave_obj)
        instance_create(1026,368,zomgrave_obj)
        instance_create(1026,592,zomgrave_obj)
    }else{
        control_obj.sunday = true
    }
    __background_set( e__BG.Index, 0, afternoon_bg )
break

case 2://noche
    control_obj.night=true
    __background_set( e__BG.Index, 0, night_bg )
    
    if global.battle_diff==0{
        instance_create(760,172,spawngraves2_obj)
        instance_create(760,368,spawngraves_obj)
        instance_create(760,592,spawngraves2_obj)
    }
    
    if room==izombie_rm{
        instance_create(1026,280,zomgrave_obj)
        if global.battle_diff<2 instance_create(1026,384,zomgrave_obj)
        instance_create(1026,488,zomgrave_obj)
    }
break

case 3://Piscina
    __background_set( e__BG.Index, 0, poolday_bg )
    if room==izombie_rm{
        instance_create(1026,240,zomgrave_obj)
        instance_create(1026,535,zomgrave_obj)
    }
    trazo_obj.image_yscale=1.05
break

case 4://rain
    control_obj.night=true
    __background_set( e__BG.Index, 0, claire_bg )
    control_obj.rain=true
    if room==izombie_rm{
        instance_create(1026,280,zomgrave_obj)
        if global.battle_diff<2 instance_create(1026,384,zomgrave_obj)
        instance_create(1026,488,zomgrave_obj)
    }
break

case 5://fog
    control_obj.night=true
    __background_set( e__BG.Index, 0, claire_bg )
    if room==izombie_rm{
        instance_create(1026,280,zomgrave_obj)
        if global.battle_diff<2 instance_create(1026,384,zomgrave_obj)
        instance_create(1026,488,zomgrave_obj)
        
        with(instance_create(0,0,fogctrl_obj)){
            //xx=room_width+500
            xfinal = 340
            xx = xfinal
            
            switch(global.battle_diff){
                case 0:
                    tls_x = 2
                break
                
                case 1:
                    tls_x = 3
                break
                
                case 2:
                    tls_x = 5
                break
            }
        }
    }else{
        with(instance_create(0,0,fogctrl_obj)){           
            switch(global.battle_diff){
                case 0:
                    xfinal=950
                break
                
                case 1:
                    xfinal=850
                break
                
                case 2:
                    xfinal=750
                break
            }
        }
    }
break
}

