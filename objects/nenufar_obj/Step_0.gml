event_inherited();

depth=-y+150

//subir y bajar
if water==true{
    if up<360 up+=3 else up=0
    yy = 2*sin(degtorad(up))
}else{
    yy=0
    up=0
}

