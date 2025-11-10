switch(other.image_index){
    default:
        if puertavida>0 and other.x<x{
            if control_obj.invisible==false image_alpha=0.5
            puertavida -= 5
        }else{
            if control_obj.invisible==false image_alpha=0.5
            vida -= 5
        }
    break

    case 1:
        if puertavida>0 and other.x<x{
            if control_obj.invisible==false image_alpha=0.5
            puertavida -= 10
        }else{
        if control_obj.invisible==false image_alpha=0.5
            vida -= 10
        }
    break

    case 2:
        if puertavida>0 and other.x<x{
            if control_obj.invisible==false image_alpha=0.5
            puertavida -= 20
        }else{
            if control_obj.invisible==false image_alpha=0.5
            vida -= 20
        }
    break
}

if soltarproteccion=false audio_play_sound(choose(hurtsnd,hurt2snd),1,false);

