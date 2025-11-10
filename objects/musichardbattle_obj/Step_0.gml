if global.iniciomusica=true
and global.gameover=false
and global.zombieswin=false
{
if !audio_is_playing(music_hardbattle_snd){
audio_play_sound(music_hardbattle_snd,10,true)}
global.iniciomusica=false
}

