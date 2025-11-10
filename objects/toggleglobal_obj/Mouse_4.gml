audio_play_sound(aceptoption_snd,1,false);

if variable_global_exists(var_name){
    variable_global_set(var_name, !variable_global_get(var_name));
    
}else if variable_instance_exists(localobj, var_name){
    
    variable_instance_set(localobj, var_name, !variable_instance_get(localobj, var_name));
}

