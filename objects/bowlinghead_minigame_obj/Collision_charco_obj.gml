if distance_to_object(nenufar_obj)>20{
audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))
with(instance_create(x+30,y,tierra1_obj)){sprite_index=agua1_spr}
with(instance_create(x+30,y,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
instance_create(x+30,y,aguaex_obj)
instance_destroy()
}

