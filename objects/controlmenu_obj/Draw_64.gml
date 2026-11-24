if keyboard_check_pressed(vk_f2){ 
    var ao = string(date_get_year(date_current_datetime()))
    var ms = string(date_get_month(date_current_datetime()))
    var da = string(date_get_day_of_year(date_current_datetime()))
    var sc = string(date_get_second_of_year(date_current_datetime()))
    var _path = game_save_id + ("ac" + string(global.acc_id)) + "/" + "screenshots/"
    
    if window_get_fullscreen(){
        screen_save_part(_path + "screenshot_" + ao+"-"+ ms+"-"+ da+" ("+ sc+ string(fps_real)+")"+ ".png", 0, 0 ,display_get_width(), display_get_height());

    }else{
        screen_save_part(_path + "screenshot_" + ao+"-"+ ms+"-"+ da+" ("+ sc+ string(fps_real)+")"+ ".png", 0, 0, window_get_width(), window_get_height());
    }
    
    audio_play_sound(screenshot_snd,1,false);
    with(instance_create_depth(x,y,-900000,fadeout_obj)){color=c_white}
}

draw_set_font(f3_fnt)
draw_set_halign(fa_left)
draw_set_valign(fa_bottom)
var _cam = view_camera[0]
var _h = camera_get_view_height(_cam)

draw_text_colour_outline(0, _h, $"BUILD: {GM_build_date}",c_white,c_white,1,c_black,c_black,1,1,10,1,1,0)

//draw_text_colour(0, _h, $"BUILD: {GM_build_date}",c_white,c_white,c_white,c_white,0.5)
