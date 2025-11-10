event_inherited();

//Subir y bajar
if up<360 up+=hspd else up=0
yy = 15*sin(degtorad(up))

switch(image_index){
    default:
        hspd=10
    break

    case 1:
        hspd=8
    break

    case 2:
        hspd=5
    break
}

