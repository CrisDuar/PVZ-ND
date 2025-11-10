//SONIDOS DE AMBIENTE
if global.gameover=false
and bossready==true
and die==false{
audio_sound_pitch(audio_play_sound(skeletarius_snd,0.9,false),random_range(0.95,1.15))
}
alarm[4]=room_speed*random_range(10,20)

