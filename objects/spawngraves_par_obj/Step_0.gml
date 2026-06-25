if (!setpos){
    y=get_closest_row(y)
    x=instance_nearest(x,y,pastoinv_obj).x-10
    spawnstart = struct_get_default(control_obj.gravesTypes[type], "spawnStart", true);
    repawntime = struct_get_default(control_obj.gravesTypes[type], "respawnTime", true);
    
    var _lvl_id = string(zombispawn_obj.lvl_type) + "_" + string(zombispawn_obj.lvl_id)
    
    if (_lvl_id == "0_24" && type == 5){
        repawntime = 30;
        maxtime=choose(15, 30, 90, 90, 120) + (irandom(30))*60
    }
    
    setpos=true
}

if spawnstart=true{
    alarm[0]=random_range(1,3)*60
    spawnstart=false
}

if global.nivelterminado=false and global.iniciogame=true and horde<=zombispawn_obj.h{
    if distance_to_object(gravedetect_obj)>0
    and distance_to_object(animgrave_obj)>0
    and distance_to_object(caja_obj)>0
    and distance_to_object(crater1_obj)>0{
        time++
    }else{
        time=0
    }
}

if time>=maxtime{
    alarm[0]=random_range(1,3)
    time=0
    
    maxtime = (irandom_range(90, 150) + irandom(repawntime))*60
}

if (audio_is_playing(suspenso1_snd) and alert_spawn=false){

    if (can_necro){
        alarm[1]=60*random_range(1,5)
    }else{
        can_necro = true
    }
    
    alert_spawn=true
}

if !audio_is_playing(suspenso1_snd) alert_spawn=false


totalgraves = instance_number(gravedetect_obj)+instance_number(animgrave_obj)

