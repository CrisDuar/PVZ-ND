if lookfor==false{
    for(var i = 0; i < 11; i++){
        if i>=10 instance_destroy();
        var _xtemp = 0
        
        if instance_exists(boss3_obj){
            _xtemp=random_range(410,boss3_obj.dark_x-180)
        }else{
            _xtemp=random_range(700,1070)
        }
    
        obj=instance_nearest(_xtemp,random_range(120,535),pastoinv_obj)
        yy=get_closest_row(obj.y+30)
        xx=obj.x
        
        if !collision_point(xx,yy,caja_obj,true,true)
        and !collision_point(xx,yy,cajaspawn_obj,true,true)
        and !collision_point(xx,yy,crater1_obj,true,true)
        and !collision_point(xx,yy,gravedetect_obj,true,true)
        and !collision_point(xx,yy,animgrave_obj,true,true){
            x=xx
            y=yy
            y1=-yy-irandom(50)
            break;
        }
    }
    lookfor=true
}else{
    spd+=0.5
    y1+=spd
    image_alpha+=0.01
    image_yscale+=0.005
    image_xscale-=0.005
    if y1>=yy{
        audio_sound_pitch(audio_play_sound(boxfall_snd,1,false),random_range(0.9,1.1))
        with(instance_create(xx,yy,caja_obj)){
            image_alpha=0.5
            image_yscale=0.6
            image_xscale=1.4
        }
        instance_destroy();
    }
}

