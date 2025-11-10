if (global.iniciomusica and !global.gameover and !global.nivelterminado){
    if !audio_is_playing(idlesong) and global.hordafinal=false{
        audio_play_sound(idlesong, 1, true)
        audio_sound_gain(idlesong, 1, 0)
        global.iniciomusica=false
    }
}

if (!audio_is_playing(idlesong) and !audio_is_playing(hordesong) and global.iniciogame){
	global.iniciomusica = true;
}

if (!global.gameover){
    if (global.hordafinal and !audio_is_playing(hordesong) and !finalwave and !loop){
        audio_stop_sound(idlesong)
        audio_play_sound(hordesong, 1, true)
        finalwave=true
    }
}