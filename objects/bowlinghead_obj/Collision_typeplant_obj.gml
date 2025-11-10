if hit==false and hitnut==false{
    with(other){
        image_alpha=0.5
        vida-=50
        
        if object_index==wallnut_obj{
            vida-=200
            repeat(3){instance_create(x,y-32,nutparticle_obj)}
        }
        
        
    }  
    var proceed=false
    
    if other.vida<=0{
        with(other){
            if distance_to_object(saveseedcasilla_obj)<1{
                audio_stop_all();
                with(instance_nearest(x,y-30,saveseedcasilla_obj)){
                    depth=-9999
                }
                game_over();
                proceed=true
            }
        }
        
        if proceed=true{
            nodispawn=true
            timeline_index = game_over_saveseed_tml
            timeline_position = 0;
            timeline_running = true
        }
    }
    
    hit=true
    direction=choose(45, 330)
    audio_play_sound(bulbopimact_snd,0.8,false)
}

