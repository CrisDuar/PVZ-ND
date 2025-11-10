event_inherited();

if water==true instance_destroy();

if checker>0{
    if activada=false checker--
}else{
    for(var i=0; i<6; i++){
        obj_z[i] = collision_line_first(x, lanes[i], 540, lanes[i], eatfather_obj, false, true)
        if obj_z[i]==noone{
            obj_z[i]=2000
        }else{
            obj_z[i]=obj_z[i].x
        }
    }
    var minl = min(obj_z[0],obj_z[1],obj_z[2],obj_z[3],obj_z[4], obj_z[5])
    
    for(var i=0; i<6; i++){
        if minl==obj_z[i] and minl!=2000{
            yy=lanes[i]
            break;
        }
    }
    checker=180
}

if y>yy{
    y-=3
    sh=1
    ignr_y=true
}else if y<yy{
    y+=3
    sh=1
    ignr_y=true
}else{
    ignr_y=false
    if activada=false sh=0
}

if abs(y-yy)<4 y=yy

