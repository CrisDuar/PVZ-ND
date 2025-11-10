/// @description ESCOGER EL ATAQUE
if global.nivelterminado=false{
    switch(atacknumber){
        case 0://Invoca zombies
            atacktype=1
            is_attacking=3
            image_index=0
        break
    
        case 1://Cambia de línea
            atacktype=2
            is_attacking=0
        break
        
        case 2://Invoca máscaras
            atacktype=3
            is_attacking=3
            image_index=0
        break
        
        case 3://Ataque en el piso
            atacktype=4
            is_attacking=2
            image_index=0
        break
        
        case 4://Invoca rayos
            atacktype=5
            is_attacking=2
            image_index=0
        break
        
        case 5://bomba de veneno
            atacktype=6
            is_attacking=2
            image_index=0
        break
    }
}
atacknumber++
if atacknumber>5 atacknumber=0

