//perder vida / perecer
switch(other.type){
    case 0:
        if puertavida>0 and other.x<x{
            if control_obj.invisible==false image_alpha=0.5
            puertavida -= 30
        }else{
            if congelado=false and canfreeze=true{audio_play_sound(zombifrost_snd,1,false)}
            if timecongelado<room_speed*8{timecongelado=room_speed*8}
            image_blend=c_frost
            if control_obj.invisible==false image_alpha=0.5
            vida -= 30
        }
    break
    
    case 1:
        if puertavida>0 and other.x<x{
            if control_obj.invisible==false image_alpha=0.5
            puertavida -= 25
        }else{
            if control_obj.invisible==false image_alpha=0.5
            vida -= 25
        }
    break
    
    case 2:
        if puertavida>0 and other.x<x{
            if control_obj.invisible==false image_alpha=0.5
            puertavida -= 50
        }else{
            if control_obj.invisible==false image_alpha=0.5
            vida -= 50
        }
    break
}

if soltarproteccion=false audio_play_sound(choose(hurtsnd,hurt2snd),1,false);

if vida<=0{
    audio_play_sound(gw_points_snd,1,false)
    control_obj.soles+=15
    instance_create(x,y-40,solmove_obj)
}

