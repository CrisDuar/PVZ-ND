if (bounce_t > 0) exit;

bounce_t = bounce_tm;

with(other){
    image_alpha=0.5
    vida -= other.damage;
}  


do_bounce();
audio_play_sound(bulbopimact_snd,0.8,false)


