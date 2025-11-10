if instance_exists(zs_endless_obj){
    instance_create(576,512,backtolevels3_obj)
}else{
    instance_create(704,512,reiniciar_sala)
    instance_create(448,512,backtolevels3_obj)
}

if variable_instance_exists(id, "gameover_destroy"){
    
    gameover_destroy = true

}

