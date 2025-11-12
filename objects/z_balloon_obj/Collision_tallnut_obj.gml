x+=5
walkspeed=4
instance_create(x-20,y-80,destroygrave_obj)
audio_play_sound(mazo1_snd,1,false)

with(other){
image_alpha=0.5
vida-=8
}

