event_inherited();

if sleep==false{
    shake+=0.02
    if image_index>=image_number-0.5{img=0}
    
    if timer<=0{
        if explo==false{
            explo=true
            with(instance_create(x,y,fadeout_obj)){color=c_white}
            instance_create(x,y+10,doomexplo_obj)
            with(instance_nearest(x,y,pastoinv_obj)){
            
                with(instance_create(x,y+20-offset,crater1_obj)){
                    dis=true
                }
                
                with(typeplant2_obj){
                    if collision_rectangle(other.x-35, other.y-35, other.x+35, other.y+35, self, true, false){
                        instance_destroy();
                    }
                }
                
                with(charco0_obj){
                    if collision_rectangle(other.x-35, other.y-35, other.x+35, other.y+35, self, true, false){
                        instance_destroy();
                    }
                } 
            }
            
            create_explosion(x,y,0,7.2,7.7,doomshroom_snd)
        }
        vida = 0;
    }else{
        timer--
    }
}

