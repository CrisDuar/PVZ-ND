/// @description no code
audio_sound_pitch(audio_play_sound(escudo_snd,0.5,false),random_range(0.85,1.15))
vida -= 700
image_alpha = 0.5;

repeat(3){
    with(instance_create(x+random_range(-10,10),y-48,nutparticle_obj))
    {
        sprite_index=zomgravepart_spr
        image_alpha=choose(0,0.5,1)
    }
}


