if global.iniciomusica=true
and global.gameover=false
and global.zombieswin=false
{
audio_sound_gain(music_moongrains_snd,1,1)
if !audio_is_playing(music_moongrains_snd)
and global.hordafinal=false{
audio_play_sound(music_moongrains_snd,1,true)
audio_sound_gain(music_moongrains_snd,1,1)
}
global.iniciomusica=false
}



if global.hordafinal=true
and !audio_is_playing(grasswalk_fw_sng)
and finalwave=false{
finalwave=true
audio_sound_gain(music_moongrains_snd,0,500)
audio_play_sound(music_finalwavenight_snd,1,true)
}

