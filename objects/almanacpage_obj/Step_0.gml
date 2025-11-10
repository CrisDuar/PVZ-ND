switch(sprite_index){
    case desc_spr:
        if global.almanacpage<1{
            image_index=0
        }else{
            image_index=1
        }
    break
    
    case stat_spr:
        if global.almanacpage>0{
            image_index=0
        }else{
            image_index=1
        }
    break
}

