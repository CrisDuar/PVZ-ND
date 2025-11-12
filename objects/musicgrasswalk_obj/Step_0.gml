if global.iniciomusica=true
and global.gameover=false
and global.zombieswin=false
{
//audio_sound_gain(music_grasswalk_snd,1,0)
if !audio_is_playing(grasswalk_sng)
and global.hordafinal=false{
audio_play_sound(grasswalk_sng,10,true)
audio_sound_gain(grasswalk_sng,1,0)
global.iniciomusica=false
}}

if audio_is_playing(grasswalk_sng){
msg=true
}else
if !audio_is_playing(grasswalk_sng)
and global.iniciogame==true
{msg=false ; global.iniciomusica=true}

if global.hordafinal=true
and !audio_is_playing(grasswalk_fw_sng)
and finalwave=false{
finalwave=true
audio_sound_gain(grasswalk_sng,0,500)
audio_play_sound(grasswalk_fw_sng,10,true)
}

