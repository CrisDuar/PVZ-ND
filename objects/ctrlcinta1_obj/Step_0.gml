if global.nivelterminado=false and global.iniciogame=true and global.gameover=false{
    if timer>0{
        timer--;
    }else{
        timer=60*random_range(t1,t2)
        
        prob_card(num)
    }

    if img<6 img+=0.5 else img=0
}

if control_obj.multijugador==true{
    if instance_exists(menuplants_obj){
        with(menuplants_obj){
            multno=collision_rectangle_list(248,y+1,-200,0,menuplants_obj,false,false,ds_list_create(),false)
        }
    }
    
    if instance_exists(menuzombi_obj){
        with(menuzombi_obj){
            multno=collision_rectangle_list(1500,y+1,0,0,menuzombi_obj,false,false,ds_list_create(),false)
        }
    }
}

