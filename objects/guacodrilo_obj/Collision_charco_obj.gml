if distance_to_object(nenufar_obj)>10{
    water=true
    if up<360 up+=3 else up=0
    yy = 2*sin(degtorad(up))
}else{
    water=false
    var sine_obj = instance_nearest(x,y,nenufar_obj)
    yy=sine_obj.yy
}

