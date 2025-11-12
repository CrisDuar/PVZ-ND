event_inherited();

depth=-y+50

if up<360 up+=3 else up=0
yy = 2*sin(degtorad(up))

var proceed = false;

if instance_exists(eatfather_obj){

    if (atk_timer > 0){
    
        atk_timer--
    }else{
        
        var n = 1;
        while(n <= instance_number(eatfather_obj)){
            
            var _zom = instance_nth_nearest(x, y, eatfather_obj, n)
        
            with(_zom){ //Checar si alguna planta pasa el filtro para que pueda disparar
                if point_in_rectangle(x,y,other.minl,other.y-15,other.maxl,other.y+15){
                
                    if object_index!=beachballdrop_obj
                    and object_index!=trashcan_obj
                    and object_index!=z_balloon_obj
                    and object_index!=caja_obj
                    and kelp==false
                    and water==true
                    {
                        proceed = true;
                        other.obj=id
                    }
                }
            }
            
            n++
            if (proceed) break;
        }

        atk_timer = 30;
    }
}else{

    atk_timer = 90;
}

if (proceed and atack=false){
    klp = instance_create(x,y,kelp_obj)  

    with(klp){
    
        og=other.id
        obj=other.obj
        
        if instance_exists(obj){
            obj.kelp=true
        }
    }
    atack=true
}

//Destroy tangle kelp once the attack is done
if (atack and !instance_exists(klp)){
    
    create_dirt(1)
    vida = 0;
}

