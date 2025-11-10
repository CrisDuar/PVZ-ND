image_alpha+=0.2

if (image_xscale=1 and menuselectplan_obj.zompag < menuselectplan_obj.zommaxpag)
or (image_xscale=-1 and menuselectplan_obj.zompag > 0){
    ready=true
    if enter==true{image_index=1}else{image_index=0}
}else{
    image_index=2
    ready=false
}

if global.playerReady=true{vspeed+=0.5}

if vspeed>=25{
    instance_destroy();
}

