//SONIDOS DE AMBIENTE
if global.gameover=false{
audio_play_sound(choose(zombieambient1_snd,zombieambient2_snd,zombieambient3_snd,zombieambient4_snd,zombieambient5_snd,zombieambient6_snd),0.9,false)
alarm[4]=60*random_range(10,30)
}

