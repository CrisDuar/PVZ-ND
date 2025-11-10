delete_game();

/*var file;
file = file_text_open_write(working_directory + "savedata.nd");
    file_text_write_real(file, 0);
    file_text_writeln(file);
    file_text_write_real(file, 0);
    file_text_writeln(file);
    file_text_write_string(file, 0);
    file_text_writeln(file);
    file_text_write_real(file, 25);
    
    file_text_writeln(file);
    file_text_write_real(file, global.cursorcolor);
    
    file_text_writeln(file);
    file_text_write_real(file, global.cursor);
    
    file_text_writeln(file);
    file_text_write_real(file, 0);
    
    file_text_writeln(file);
    file_text_write_real(file, 0);
    
    file_text_writeln(file);
    
    file_text_writeln(file);
    file_text_write_real(file, 0);
    
    file_text_writeln(file);
    file_text_write_real(file, 0);

file_text_close(file);

if file_exists("survival.ini"){file_delete("survival.ini")}

with(controlmenu_obj){event_perform(ev_other,ev_game_start)}
game_restart();

/* */
/*  */
