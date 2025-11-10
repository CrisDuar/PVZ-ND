if hitnut==false{
    hitnut=true
    audio_play_sound(bulbopimact_snd,0.8,false)
    direction=choose(45, 330)
    
    with(other){
        repeat(3){instance_create(x,y-32,nutparticle_obj)}
    }
    
    var a = irandom(100)
    
    if a <=10{
        audio_sound_pitch(audio_play_sound(sol_snd,1,false),control_obj.sunpitch)
        control_obj.sunpitch+=0.25
        control_obj.soles += 25
        instance_create(x,y,solmove_obj)
    }
}

