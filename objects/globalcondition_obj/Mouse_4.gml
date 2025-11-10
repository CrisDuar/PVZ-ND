if !file_exists("survival.ini")
{
if variable_global_exists(cond){
audio_play_sound(aceptoption_snd,1,false);
if variable_global_get(cond)==true{variable_global_set(cond,false)}
else{variable_global_set(cond,true)}
}
}

