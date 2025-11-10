audio_play_sound(aguaplant_snd,0.5,false)
audio_play_sound(sweep_snd,0.5,false)
num=0.01
image_speed=0.5
image_alpha=0.5
desapareciendo=false
image_yscale=0.2

snd=false
og = noone
obj = noone

if distance_to_object(charco_obj)>10
and y<280 or y>435{
    with(instance_nearest(x,y,pastoinv_obj)){
        instance_create(x,y+30-offset,charco_obj)
    }
}

