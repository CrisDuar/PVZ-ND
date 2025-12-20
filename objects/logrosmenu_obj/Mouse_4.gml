if (global.popup_open == 0 and global.progress[? "niveles"] > 6)
{
audio_stop_all();
room_goto(logros_rm);
audio_play_sound(aceptoption_snd,1,false);
image_yscale=1
image_xscale=1
}