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

spawn = false;
row = 5;
//Pool
if (global.battle_map==3) row = 6;

if room == izombie_rm{
	control_obj.mowers = array_create(row, 3);
}else{
	
	if (global.battle_map==3){
	
		control_obj.mowers = [0,0,2,2,0,0];
	}else{
		
		control_obj.mowers = array_create(row, 0);
	}
}

switch(global.battle_map){
default://dia
    if room==izombie_rm{
        instance_create_layer(1026,280,"Instances",zomgrave_obj)
        instance_create_layer(1026,488,"Instances",zomgrave_obj)
    }
	
	control_obj.stage = 2;
	control_obj.daytime = 0;
break

case 1://tarde
	control_obj.stage = 2;
	control_obj.daytime = 1;
	
    if room==izombie_rm{
        instance_create_layer(1026,172,"Instances",zomgrave_obj)
        instance_create_layer(1026,368,"Instances",zomgrave_obj)
        instance_create_layer(1026,592,"Instances",zomgrave_obj)
    }
    //__background_set( e__BG.Index, 0, afternoon_bg )
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

