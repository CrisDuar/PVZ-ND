/// @description ESCOGER EL ATAQUE
if global.nivelterminado=false{
    switch(atacknumber){
        case 0://Cambia de posición
            atacktype=4
            is_attacking=2
        break
    
        case 1://Se esconde y genera un muro
            atacktype=3
            is_attacking=2
        break
        
        case 2://Genera zombies
            atacktype=1
            is_attacking=1
        break
            
        case 3://Roba plantas
            if instance_number(typeplant_obj)>5{
                atacktype=2
            }else{
                atacktype=4
            }
            is_attacking=2
        break
        
        case 4://Lanza el tridente
            if instance_number(typeplant_obj)>5{
                atacktype=5
                is_attacking=3
            }else{
                atacktype=4
                is_attacking=2
            }
        break
    }
}
atacknumber++
if atacknumber>4 atacknumber=0

