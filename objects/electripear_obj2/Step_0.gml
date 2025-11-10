event_inherited();

//ATAQUE PASIVO
if !instance_exists(obj2){
    obj=self
    con=false
    objx=xx
    objy=yy
}
/*
if con==false and con2me==false{
    if !instance_exists(obj) or obj==self{
        var temp = instance_nth_nearest(x,y,electripear_obj,2)
        
        if temp.con==true or temp.con2me==true{
            var n = 3
            while temp.con==true or temp.con2me==true{//check for another pear
                temp=instance_nth_nearest(x,y,electripear_obj,n)
                n++
                if temp.con==false and temp.con2me==false{
                    obj=temp
                    break;
                }
                
                if n>instance_number(electripear_obj){
                    obj=self
                    break;
                }
            }  
        }else{
            obj=temp
        }
    }
}
*/
if instance_exists(obj){
    if obj!=self and obj.con==false{
        objx = obj.x+30
        objy = obj.y-35
        
        if obj.con==false{
            con=true
            obj.con2me=true
        }
        
        if instance_exists(eatfather_obj) and con==true{
            with(eatfather_obj){
                if collision_line(other.xx-15,other.yy,other.objx-10,other.objy,self,false,false)
                or collision_line(other.xx+15,other.yy,other.objx+10,other.objy,self,false,false){
                    vida-=0.5
                    image_alpha=choose(0.1,0.2,0.3,0.4,0.5)
                }
            }
        }
    }else{
        con=false
        //con2me=false
    }
}else{
    objx = xx
    objy = yy
    con=false
    con2me=false
}


//EXPLOSION

if image_index>=image_number-0.5 and act==true{img=0}

if vida<=900{
    if sprite_index==electripear0_spr{
        image_index=0
        sprite_index=electripear1_spr
        audio_play_sound(zapear1_snd,1,false)
    }
    act=true
}

if timer<=0{
instance_destroy();
with(instance_create(x+5,y-20,powie_obj)){
    sprite_index=shock_spr
}
//part_particles_create(control_obj.part, x-random_range(-10,12), y, control_obj.p11, 40);
with(instance_create(x,y,rayogrande_obj)){
    objx=other.x
    objy=other.y
    xx=other.x
    yy=-20
}
repeat(5){pera_attack()}
create_explosion(x,y,4,1.8,0.4,zapear2_snd)

}
else if act == true{
timer-=1
}

/* */
/*  */
