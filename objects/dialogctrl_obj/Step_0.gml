if num<=close{
    if show==false{
        if yy>760{
            yy-=15
        }else{
            if sinyy<1{
                yy-=15-(sin(sinyy)*15)
                sinyy+=0.1
            }else{
                cut_t--;
            }
            if cut_t<=0 show=true
        }
    }
    
    if playsong[num]==-1{
        if audio_is_playing(song){
            audio_pause_sound(song)
        }
    }else{
        if playsong[num]!=song{
            audio_stop_sound(song)
            song = playsong[num]
            audio_play_sound(song,1,true)
        }
        
        if !audio_is_playing(song){
            audio_play_sound(song,1,true)
        }
        
        if audio_is_paused(song){
            audio_resume_sound(song)
        }
    }
    
    //TIME LINES
    if tml[num]!=-1{
        timeline=tml[num]
        tml[num]=-1
    }
    
    //MOTION
    if mot_st[num, 0]!=-1{
        mot[mot_st[num,0]] = mot_st[num,1]
    }else{
        mot[0] = 0
        mot[1] = 0
    }
    
    //pendulum
    if mot[0]<=0{
        angle=0
        angle_sin=0
    }else{
        angle = mot[0]*sin(radtodeg(angle_sin));
        if angle_sin<=360 angle_sin+=0.0005 else angle_sin=0
    }
    if timeline_position>timeline_max_moment(timeline_index) and timeline_running==true{
        timeline=-1
        num++
        timeline_running = false;
    } 
}else{
    if show=true{
        show=false
        audio_stop_all();
        
        if !audio_is_playing(music_chooseseeds_snd) and (instance_exists(musicglobalhorde_obj) or instance_exists(musicloop_obj))
        {audio_play_sound(music_chooseseeds_snd,1,true)}
    }
    yy+=yy2
    yy2++
    if yy>=1136 instance_destroy()
}

if ysc<1 ysc+=0.01
if xsc>1 xsc-=0.01

