// Inherit the parent event
event_inherited();

if (!global.iniciogame) exit;

if (room == izombie_rm) exit;

if (graceTime > 0){
    
    graceTime--;
}else{
    
    if (count < maxCount){ 
        if (spawnTime > 0){
            
             spawnTime--;
             
         }else{
             
             spawnTime = spawnTimeMax;
     
             with(instance_create(x,get_closest_row(y),zombiegrave_obj)){
                 water=other.water
                 obj=other.zominventory[irandom_range(0,array_length(other.zominventory)-1)]
            }
            count++;
        }
    }else{
        count = 0;
        graceTime = maxGraceTime;
    }
}

if (canspawn){
    if (instance_exists(finalwave_obj)){
        spawnTime = spawnTimeMax;
        spawned = true;
    }
    
    if (spawned && !global.nivelterminado){
        if (spawnTime > 0){
            
            spawnTime--;
            
        }else{
            
            spawnTime = spawnTimeMax;
            spawned = false;
    
            with(instance_create(x,get_closest_row(y),zombiegrave_obj)){
                water=other.water
                obj=other.zominventory[irandom_range(0,array_length(other.zominventory)-1)]
            }
        }
    }
}

