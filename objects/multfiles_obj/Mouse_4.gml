audio_play_sound(selectstone1_snd,1,false)
image_yscale=0.98
image_xscale=0.98

if !directory_exists("versus"){
    directory_create("versus");
}

var _path = game_save_id + "\\versus";
execute_shell_simple(_path);

