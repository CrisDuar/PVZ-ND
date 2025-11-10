if poison=false{
poison=true
vida -= 5
audio_play_sound(choose(poison1_snd,poison2_snd),1,false)
image_alpha=0.5
}else{
image_alpha=0.5
vida -= 0.1
}

