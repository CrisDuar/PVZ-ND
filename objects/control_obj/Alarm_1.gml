///Rain and puddles
var r1
var r2

switch(room){
    default:
        r1=1000
        r2=100
    break
    
    case izombie_rm:
    case multiplayer1_rm:
        r1=590
        r2=770
    break
}

if global.nivelterminado=false and global.iniciogame=true and rain==true and global.gameover==false{
    with(instance_nearest(irandom_range(r1,r2),irandom(700),pastoinv_obj)){
        if (water==false){
            if distance_to_object(charco_obj)>10 
            and distance_to_object(poisontile_obj)>0
            and distance_to_object(animgrave_obj)>0
            and distance_to_object(sunmachine_obj)>0
            and distance_to_object(gravedetect_obj)>0
            and distance_to_object(crater1_obj)>0
            and distance_to_object(charco0_obj)>10{
                instance_create_layer(x,y+30-offset, "Instances", charco0_obj)
            }
        }
    }
}

alarm[1]=60*random_range(10,30)
