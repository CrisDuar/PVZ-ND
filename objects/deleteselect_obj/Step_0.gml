image_alpha+=0.2
var proceed = false;
if instance_exists(select_obj){
    with(select_obj){
        if (ocupied and !lock){
            proceed = true;
            break;
        }
    }
    
    if proceed==true{
        ready=true
        if enter=false{image_index=0}else{image_index=1}
    }else{
        ready=false;
        image_index=2
    }
}



if global.playerReady=true{vspeed+=0.5}
if vspeed>=25{instance_destroy()}

