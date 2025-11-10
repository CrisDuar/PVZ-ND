if variable_global_exists(var_name){
    image_index = variable_global_get(var_name);
    
}else if variable_instance_exists(localobj, var_name){

    image_index = variable_instance_get(localobj, var_name);
}

if global.lang="es"{text=estext}else{text=entext}

if (os_type == os_android and android) instance_destroy();

