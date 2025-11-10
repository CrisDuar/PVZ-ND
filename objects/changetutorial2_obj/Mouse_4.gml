if instance_exists(howtoplayvs_obj){
if howtoplayvs_obj.image_index<howtoplayvs_obj.image_number-1
{
audio_play_sound(aceptoption_snd,1,false);
howtoplayvs_obj.image_index+=1
image_xscale=-0.98
image_yscale=0.98
}}

