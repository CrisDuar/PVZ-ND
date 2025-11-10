image_speed=0
done=false

start_up=0
up=0
yy=0

switch(room){
    case level1_sl_rm_:
        image_index=0
    break
    
    case level2_sl_rm:
    case hardmode_night_rm:
        image_index=1
    break
    
    case level3_sl_rm:
        image_index=2
    break
    
    case hardmode_pool_rm:
        image_index=3
    break
    
    case level4_sl_rm:
    case hardmode_claire_rm:
    case vase_sl_rm:
        image_index=4
    break
}

