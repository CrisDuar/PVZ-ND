image_xscale=0.98
image_yscale=0.98

if image_alpha>=1{
    switch(image_index){
        case 0:
            room_goto(level1_sl_rm_)
        break
    
        case 1:
            room_goto(level2_sl_rm)
        break
    
        case 2:
            room_goto(level3_sl_rm)
        break
    
        case 3:
            room_goto(level4_sl_rm)
        break
    }
}


