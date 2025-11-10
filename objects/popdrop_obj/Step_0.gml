if fase==2{
    gravity=0
    y=point
    if num<0{num+=0.25}
    if num>0{num-=0.25}
    time+=random_range(0.5,1)
    if hspeed<0{hspeed+=0.05}
    if hspeed>0{hspeed-=0.05}
}

image_angle+=num

if y>=point and fase=0{
    if (point_in_rectangle(x,y,305,290,1055,450)
    and __background_get( e__BG.Index, 0 )=poolday_bg or distance_to_object(charco_obj)<1)
    or distance_to_object(charco_obj)<1{w=true}
    y=point
    vspeed=-3
    fase=1
}

if y>=point and fase=1 and vspeed>0{
    fase=2
    y=point
    vspeed=0
}

if w=true and fase=1{
    with(instance_create(x,y,tierra1_obj)){sprite_index=agua1_spr}
    with(instance_create(x,y,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
    instance_create(x,y,aguaex_obj)
    instance_destroy()
}

if time>=dis_time{
    if desapareciendo>0 desapareciendo-=0.1
}

if desapareciendo<=0 image_alpha-=0.05

if image_alpha<=0 instance_destroy()

