image_alpha+=0.2
if global.list[0]==0 or instance_exists(lock_selection_obj){
    ready=false
}else{
    ready=true
}

if ready==false{
    image_index=2
}else{
    if enter==true{
        image_index=1
    }else{
        image_index=0
    }
}
        
if global.playerReady=true{vspeed+=0.5}
if vspeed>=25{instance_destroy()}

