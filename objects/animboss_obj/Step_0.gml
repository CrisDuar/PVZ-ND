switch(state){
    case 0:
        if alpha<1 alpha+=0.05
        
        chain_sh += 0.02
        
        
        if chain_sh>1.5{
            state = 1;
            audio_play_sound(bosschains2_snd,1, false)
        }
    break
    
    case 1:
    
    timeline_index = boss_chain_tml
    timeline_running = true;
    
    if chain_img < 3 chain_img+=0.16
    
    if txt_alpha<1 txt_alpha+=0.1
    
    chain_pos += 0.25
    chain_angle += 0.15
    
    break
    
    case 2:
        alpha-=0.05
        txt_alpha-=0.025
        chain_pos += 0.2
        chain_angle += 0.1
        
        if txt_alpha<=0 instance_destroy();
    break
}

