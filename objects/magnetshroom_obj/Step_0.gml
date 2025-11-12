event_inherited();
//Change states

if sleep==true{
    state=3
}else if state==3{
    state=0
}

if state==1 or state==2{
    if floor(objxx)>x objxx-= point_distance(objxx,100,x,100)/25;
    if floor(objxx)<x objxx+= point_distance(objxx,100,x,100)/25;
    
    if floor(objyy)>y-40 objyy-= point_distance(objyy,100,y-40,100)/25;
    if floor(objyy)<y-40 objyy+= point_distance(objyy,100,y-40,100)/25;
    
    if instance_exists(depth_control) {depth_control.depth=depth-5-point_distance(objyy,100,y-40,100)/25}
}

//Sprites
switch(state){
    case 0://idle
        sprite_index=spr_idle
        if magnet_t>0{
            magnet_t--
        }else{
            magnet_t=60
            if collision_circle(x,y-30,area,eatfather_obj,false,false) and global.gameover=false{
                do_magnet(z_buckethead_obj,0,cubo_spr)
                do_magnet(z_allstar_oj,0,futbolhelmet1_spr)
                do_magnet(z_rocket_obj,0,rocket_spr)
                
                do_magnet(z_jackinthebox_obj,3,musicbox_spr)
                do_magnet(z_protesterleader_obj,3,megafono_spr)
                
                do_magnet(z_trashcan_obj,1,trashcan_spr)
                do_magnet(z_screendoor_obj,1,screendoor_spr)
                
                do_magnet(trashcan_obj,2,trashcan_spr)
            }
        }
    break
    
    case 1://Magnet
        sprite_index=spr_atk
        if image_index>=image_number-1{
            state = 2
            t = 0
        }
    break
    
    case 2://Rest
        sprite_index=spr_rest
        
        if t<60*15{
            t+=1
        }else{
            image_alpha=0
            state=0
            t=0
        }
    break
    
    case 3://sleep
        sprite_index=spr_sleep
    break
}

/*Zombies:

Zombiedoor_obj
trashcanzombie_obj
futbolzombi_obj
trashcan_obj
zombierocket_obj
zombiecarecubo_obj

/* */
/*  */
