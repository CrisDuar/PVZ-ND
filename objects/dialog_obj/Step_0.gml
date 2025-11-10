if num<=close{
    if yy>630{
        yy-=20
    }else if yy<645{
        yy-=20-(cos(cosyy)*20)
        cosyy+=0.1
    }else{
        show=true
    }
    
    if playsong[num]=true{
        if !audio_is_paused(song){
            audio_resume_sound(song)
        }
    }else{
            audio_pause_sound(song)
    }
    
    if !audio_is_playing(song){
        audio_play_sound(song,1,true)
    }

}else{
    if show=true{
        show=false
        audio_stop_all();
        audio_play_sound(music_chooseseeds_snd,1,true)
    }
    //yy+=yy2
    //yy2+=1
    //if yy>=1136 instance_destroy()
}


//if ysc<1 ysc+=0.01




