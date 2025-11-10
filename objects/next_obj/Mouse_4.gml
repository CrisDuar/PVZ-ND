if global.pag < global.maxpag{
global.pag+=1}

if instance_exists(letsgo_obj){
if ready=true{
audio_play_sound(seleccionarplantas_snd,1,false)
}else{
audio_play_sound(errorseed_snd,1,false);
}}

