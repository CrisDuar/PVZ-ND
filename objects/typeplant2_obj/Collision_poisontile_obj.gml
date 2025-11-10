if canpoison==true and poison<=0{
    if wall==true poison=1200 else poison=600
    audio_sound_pitch(audio_play_sound(poison1_snd,1,false),random_range(1,1.4))
    image_alpha=0.5
}

