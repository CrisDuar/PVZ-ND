if !directory_exists("screenshots"){
    directory_create("screenshots");
}

var _path = game_save_id + "\\screenshots";
execute_shell_simple(_path);

