depth=-y

if amount<=0{
    instance_destroy();
}else{  
    if done=0{
        done=1
        audio_play_sound(thump_snd,1,false)
        audio_play_sound(gravesound_snd,1,false)
        create_dirt(0)
        with(typeplant_obj){
            if collision_rectangle(other.x-10,other.y-5,other.x+10,other.y+5,self,false,false){
                vida=0
            }
        }
        
        with(eatfather_obj){
            if collision_rectangle(other.x-10,other.y-5,other.x+10,other.y+5,self,false,false)
            and object_index!=boss3_obj{
                vida=0
            }
        }
    }else{
        if t<5{
            t++
        }else if done==1{
            done=2
            with(instance_create(x-90,y,groundatk_obj)){
                amount=other.amount-1
            }
        }
    }
    
    if image_index>image_number-1{
        image_speed=0
        image_alpha-=0.05
        
        if image_alpha<=0 instance_destroy();
    }
}

