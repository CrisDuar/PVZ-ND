if (init == false){
    
    t = tmax;
    
    init = true;
}

if ((point_in_rectangle(x,y,305,290,1055,440) and __background_get( e__BG.Index, 0 )=poolday_bg) or place_meeting(x,y,charco_obj)){
    w=true
}else{
    w=false
}

//subir y bajar
if w==true{
    if up<360 up+=3 else up=0
    yy = 2*sin(degtorad(up))
    
    if (control_obj.daytime == 2) sprite_index=crater4_spr else sprite_index=crater3_spr
}else{
    yy=0
    up=0
    if (control_obj.night == 2) sprite_index=crater2_spr else sprite_index=crater_spr
}

if (dis){
    if t>0{
        t--
    }else{
        if image_index==1{
            instance_destroy()
        }else{
            t=tmax
            image_index++
        }
    }
}

