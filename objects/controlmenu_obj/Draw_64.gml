if keyboard_check_pressed(vk_f2){ 
    var ao = string(date_get_year(date_current_datetime()))
    var ms = string(date_get_month(date_current_datetime()))
    var da = string(date_get_day_of_year(date_current_datetime()))
    var sc = string(date_get_second_of_year(date_current_datetime()))
    
    if window_get_fullscreen(){
        screen_save_part(working_directory + "\\screenshots\\screenshot_" + ao+"-"+ ms+"-"+ da+" ("+ sc+ string(fps_real)+")"+ ".png", 0, 0 ,display_get_width(), display_get_height());

    }else{
        screen_save_part(working_directory + "\\screenshots\\screenshot_" + ao+"-"+ ms+"-"+ da+" ("+ sc+ string(fps_real)+")"+ ".png", 0, 0, window_get_width(), window_get_height());
    }
    
    audio_play_sound(screenshot_snd,1,false);
    with(instance_create_depth(x,y,-900000,fadeout_obj)){color=c_white}
}

