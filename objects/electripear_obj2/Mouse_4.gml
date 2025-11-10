/*if canpress==true{
    if connecting=false and look_for_connect=false{
        with(electripear_obj){
            connecting=false
            look_for_connect=true
        }
        connecting=true
        look_for_connect=false
    }else if connecting=false and look_for_connect=true{
        var proceed = false;
        var inst_temp = noone
        
        with(electripear_obj){ //Checar si alguna pera pasa el filtro para que pueda conectarse
            if connecting==true{
                proceed = true;
                inst_temp = id
                break;
            }
        }
        
        if proceed==true{
            with(electripear_obj){ //Checar si alguna pera está conectada a ella
                if (inst==other.id or obj=other.obj) and con==true{
                    con=false
                    obj=self
                    inst=noone
                }
            }
            with(inst){
                obj=self
                con=false
                con2me=false
            }
            inst=inst_temp
        
           if instance_exists(obj2){
                obj2.obj=self
                obj2.con2me=false
                obj2.connecting=false
                obj2.look_for_connect=false
           }
            
            with(inst){
                obj=other.id
                con=true
                con2me=false
            }

            with(electripear_obj){
                connecting=false
                look_for_connect=false
            }
            con=false
            con2me=true
            obj=self
            obj2=self
        }else{
            connecting=false
            look_for_connect=false
        }
    }else{
        connecting=false
        look_for_connect=false
    }
}*/

if canpress==true{
    if connecting=false and look_for_connect=false{
        with(electripear_obj){
            connecting=false
            look_for_connect=true
        }
    connecting=true
    look_for_connect=false
    }else if connecting=false and look_for_connect=true{
        var inst_temp = instance_position(x,y,electripear_obj)
        
        if inst_temp!=noone{
            with(inst_temp){
                con=false
                con2me=true
                obj=self
            }
            con=true
            con2me=false
            obj=self
        }
    }
}

/* */
/*  */
