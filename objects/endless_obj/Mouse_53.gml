if locked=false{ 
    if point_in_rectangle(mouse_x,mouse_y,x-69,y+180-22,x+69,y+180+22){
        audio_stop_all();
        audio_play_sound(selectstone1_snd,1,false)
        room_goto(_room)
    }
    
    if point_in_rectangle(mouse_x,mouse_y,x-69,y+230-22,x+69,y+230+22) and progress>0{
    
        if confirm==false{
            timer=60*5; confirm=true
        }else{
            audio_play_sound(selectstone1_snd,1,false)
            survival_newgame(file);
            survival_load_record(file);
            confirm=false
        }
    }
}

