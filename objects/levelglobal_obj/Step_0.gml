if raton=true{
    if a<15{a++}else{a=0}
}else{
    a=0
}

if (drag_t > 0) drag_t--

if audio_is_playing(errorseed_snd)
and candadotemblando=true{
    if a2<3{a2+=0.5*dlt}else{a2=0}
}
else{
    candadotemblando=false
    a2=0
}

//clone the movement from the object's speed and direction
if distance_to_object(parentisla_obj)<1{
    var obj_island = instance_nearest(x,y,parentisla_obj)
    yy=obj_island.yy
}

y=ystart+yy

if variable_global_get(cond)<num
{image_blend=c_gray}else{image_blend=c_white}

