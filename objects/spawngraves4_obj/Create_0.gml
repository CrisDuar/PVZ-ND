//to edit
event_inherited();
spawnstart=false
type=grave4_obj

repawntime = 120

//tiempo para spawnear la tumba

var a = irandom(100)

if (a < 20){//short 20%
    
    maxtime = (120 + irandom(60))*60
    
}else if (a >= 20 and a < 80){// medium 60%
    
    maxtime = (360 + irandom(60))*60
    
}else{// long 20%
    
    maxtime = (irandom_range(420, 480) + irandom(60))*60
}

