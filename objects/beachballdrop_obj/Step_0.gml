depth=-y-40;

if fase!=2{
    vspeed+=0.3
}else{
    if num<0{num+=0.25}
    if num>0{num-=0.25}
    if hspeed<0{hspeed+=0.05}
    if hspeed>0{hspeed-=0.05}
}

angle+=num

if y>=point and fase=0{
    fase=1
    y=point
    hspeed=floor(hspeed/2)
    vspeed=-3
    if (collision_rectangle(305,284,1055,423,self,false,false) 
    and __background_get( e__BG.Index, 0 )=poolday_bg) or (distance_to_object(charco_obj)<1){w=true}
}

if y>=point+4 and fase=1 and vspeed>0{
    fase=2
    vspeed=0
}

if image_alpha<1 image_alpha+=0.05

if vida<=0{
    audio_play_sound(pop_snd,1,false)
    instance_create(x,y,destroygrave_obj)
    instance_destroy();
}

if fase=2{
    if x>1075{
        x--
        angle--
    }else if x<310{
        x++
        angle++
    }
    if hspeed>0 hspeed-=0.05
    angle-=hspeed
}

