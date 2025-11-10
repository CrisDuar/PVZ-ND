//wave movement
if disfraz==1{
    if distance_to_object(nenufar_obj)>10{
        if up<360 up+=3 else up=0
        yy = 2*sin(degtorad(up))
        water = true;
    }else{
        var sine_obj = instance_nearest(x,y,nenufar_obj)
        yy=sine_obj.yy
    }
}else{
    event_inherited();
}

