//to edit
spawnstart=true
type=grave1_obj
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

graves=0//cantidad inicial
maxgraves=0//cantidad máxima
totalgraves=0//cantidad real
image_alpha=0.25
visible=false
mask_index = grave1_spr
setpos=false

horde = 0

switch(room){
    default: 
    graves=5; maxgraves=7//
    break
    
    case nivel14_rm: 
    graves=2; maxgraves=7//
    break

    case nivel16_rm: 
    graves=2; maxgraves=5//
    break
    
    case nivel17_rm: 
    graves=4; maxgraves=8//
    break
    
    case nivel18_rm: 
    graves=5; maxgraves=8//
    break
    
    case nivel19_rm: 
    graves=4; maxgraves=12//
    break
    
    case nivel20_rm_: 
    graves=2; maxgraves=5//
    break
    
    case nivel24_rm: 
    graves=8; maxgraves=15//
    break
    
    case nivel25_rm: 
    graves=6; maxgraves=13//
    break
    
    case nivel26_rm: 
    graves=10; maxgraves=10//
    break
    
    case nivel27_rm: 
    graves=7; maxgraves=10//
    break
    
    case nivel28_rm: 
    graves=5; maxgraves=8//
    break
    
    case nivel29_rm: 
    graves=10; maxgraves=15//
    break
    
    case nivel30_rm: 
    graves=0; maxgraves=24//
    break
    
    case levelhard2_1_rm:
    case levelhard2_2_rm:
    graves=3; maxgraves=8//
    break
    
    case levelhard2_3_rm:
    graves=5; maxgraves=10//
    break
    
    case levelhard2_4_rm:
    case levelhard2_5_rm:
    graves=10; maxgraves=12//
    break
    
    case levelhard3_2_rm:
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
    
    case levelhard4_4_rm:
    graves=5 ; maxgraves=20//
    break
}

