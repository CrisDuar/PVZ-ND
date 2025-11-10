if global.iniciomusica=true
and global.gameover=false
and global.zombieswin=false
{
//audio_sound_gain(music_grasswalk_snd,1,0)
if !audio_is_playing(music_grasswalk_snd)
and global.hordafinal=false{
audio_play_sound(music_grasswalk_snd,10,true)
audio_sound_gain(music_grasswalk_snd,1,0)
global.iniciomusica=false
}}

if audio_is_playing(music_grasswalk_snd){
msg=true
}else
if !audio_is_playing(music_grasswalk_snd)
and global.iniciogame==true
{msg=false ; global.iniciomusica=true}

if global.hordafinal=true
and !audio_is_playing(music_finalwaveday_snd)
and finalwave=false{
finalwave=true
audio_sound_gain(music_grasswalk_snd,0,500)
audio_play_sound(music_finalwaveday_snd,10,true)
}

