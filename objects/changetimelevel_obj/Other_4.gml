/*if !room=level1_sl_rm_{
    virtual_key_delete(backtomenu_obj)
}else{
    key=virtual_key_add(x,y,133,66,vk_delete)
}*/
//key=virtual_key_add(x,y,133,66,vk_delete)
switch(room){
    case level1_sl_rm_://Día
        if global.niveles<=15{
            image_alpha=0
        }else{
            image_alpha=1
            image_index=1
        }
    break
    
    case level2_sl_rm://Noche
        if global.niveles<=30{
            image_index=0
        }else{
            image_index=2
        }
    break
    
    case level3_sl_rm://Piscina
        if global.niveles<=51{
            image_index=0
        }else{
            image_index=3
        }
    break
    
    case level4_sl_rm://Clima
        image_index=0
        /*if global.niveles<=[last level of weather]{
            image_index=0
        }else{
            image_index=4
        }*/
    break
}

/* */
/*  */
