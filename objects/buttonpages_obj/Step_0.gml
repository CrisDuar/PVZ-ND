image_alpha+=0.2

if (image_xscale=1 and menuselectplan_obj.pag < menuselectplan_obj.maxpag)
or (image_xscale=-1 and menuselectplan_obj.pag > 0){
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

