//to edit

spawnstart=true
type=1
water=false
time=0//tiempo real para spawnear una tumba
breaktime=0//tiempo de descanso por comepiedras
can_necro = true//puede aparecer en la siguiente bandera

//tiempo para spawnear la tumba

var a = irandom(100)

if (a < 20){//short 20%
    
    maxtime = (60 + irandom(60))*60
    
}else if (a >= 20 and a < 80){// medium 60%
    
    maxtime = (120 + irandom(60))*60
    
}else{// long 20%
    
    maxtime = (irandom_range(240, 300) + irandom(60))*60
}


repawntime = 30

alert_spawn=false
spawn=false
spawnfinal=false

//graves=0//cantidad inicial
//maxgraves=0//cantidad máxima
totalgraves=0//cantidad real
image_alpha=0.25
visible=false
mask_index = grave1_spr
image_speed = 0;
setpos=false

horde = 0
/*
var _lvl_id = string(zombispawn_obj.lvl_type) + "_" + string(zombispawn_obj.lvl_id)

switch(_lvl_id){
    default: 
    graves=5; maxgraves=7//
    break
    
    case "0_13": 
    graves=2; maxgraves=7//
    break

    case "0_15": 
    graves=2; maxgraves=5//
    break
    
    case "0_16": 
    graves=4; maxgraves=8//
    break
    
    case "0_17": 
    graves=5; maxgraves=8//
    break
    
    case "0_18": 
    graves=4; maxgraves=12//
    break
    
    case "0_19": 
    graves=2; maxgraves=5//
    break
    
    case "0_23": 
    graves=8; maxgraves=15//
    break
    
    case "0_24": 
    graves=6; maxgraves=13//
    break
    
    case "0_25": 
    graves=10; maxgraves=10//
    break
    
    case "0_26": 
    graves=7; maxgraves=10//
    break
    
    case "0_27": 
    graves=5; maxgraves=8//
    break
    
    case "0_28": 
    graves=10; maxgraves=15//
    break
    
    case "0_29": 
    graves=0; maxgraves=24//
    break
    
    case "1_6"://levelhard2_1_rm:
    case "1_7"://levelhard2_2_rm:
    graves=3; maxgraves=8//
    break
    
    case "1_8"://levelhard2_3_rm:
    graves=5; maxgraves=10//
    break
    
    case "1_9"://levelhard2_4_rm:
    case "1_10"://levelhard2_5_rm:
    graves=10; maxgraves=12//
    break
    
    case "1_74"://levelhard3_2_rm:
    graves=3; maxgraves=13//
    break
    
    case iplant_rm:
        switch(global.battle_diff){
            case 0:
                if global.battle_map==3{
                    graves=6;
                    maxgraves=9;
                }else{
                    graves=5;
                    maxgraves=8;
                }
                
            break
            
            case 1:
                if global.battle_map==3{
                    graves=8;
                    maxgraves=12;
                }else{
                    graves=7;
                    maxgraves=10;
                }
            break
            
            case 2:
                if global.battle_map==3{
                    graves=12;
                    maxgraves=18;
                }else{
                    graves=10;
                    maxgraves=15;
                }
        }
    
    break
    
    case "1_21"://levelhard4_4_rm:
    graves=5 ; maxgraves=20//
    break
}
*/
