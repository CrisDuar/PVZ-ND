global.dinero+=value
audio_sound_pitch(audio_play_sound(snd2,1,false),random_range(0.95,1.15))
with(instance_create(x,y,moneymove_obj)){sprite_index=other.sprite_index; value=other.value}
instance_destroy();

