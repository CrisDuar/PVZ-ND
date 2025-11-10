switch(other.image_index){
    default:
        audio_play_sound(choose(hurtsnd,hurt2snd),1,false);
        if control_obj.invisible==false image_alpha=0.5
        vida -= 5
    break

    case 1:
        audio_play_sound(choose(hurtsnd,hurt2snd),1,false);
        if control_obj.invisible==false image_alpha=0.5
        vida -= 10
    break

    case 2:
        audio_play_sound(choose(hurtsnd,hurt2snd),1,false);
        if control_obj.invisible==false image_alpha=0.5
        vida -= 20
    break
}

