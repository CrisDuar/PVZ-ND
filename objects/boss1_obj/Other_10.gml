/// @description ESCOGER EL ATAQUE
if global.nivelterminado=false{
    switch(atacknumber){
        case 0://Spawnea las tumbas
            if instance_number(soulgrave_obj)<instance_number(spawngraves7_obj){
                atacktype=3
            }else{
                atacktype=choose(2,5)
            }
        break
            
        case 1://Dispara
            if collision_line_first(x-25, y-30, 256, y-30,typeplant_obj, false, false){
                atacktype=6
            }else{
                atacktype=4
            }
        break
        
        case 2://Cambia de posición
            atacktype=4
        break
        
        case 3://Las tumbas disparan
            if instance_exists(soulgrave_obj){atacktype=5}else{atacktype=6}
        break
        
        case 4://Spawnea zombis
            if instance_exists(soulgrave_obj){atacktype=2}else{atacktype=3}
        break
        
        case 5://Convierte plantas en tumbas
            if instance_exists(typeplant_obj){atacktype=1}else{atacktype=4}
        break
    }
}
atacknumber++
if atacknumber>5 atacknumber=0

