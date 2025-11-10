image_index=control_obj.night

if control_obj.rain==true{
    if image_alpha<1{
        image_alpha+=0.001
    }else{
        xs+=0.004
        ys+=0.004
        alpha+=0.004
    }
}

if alpha>=1{
    create_dirt(true);
    instance_create(x,y,charco_obj)
    instance_destroy();
}

if distance_to_object(animgrave_obj)<1 or distance_to_object(sunmachine_obj)<1
or distance_to_object(saveseedcasilla_obj)<=10 or distance_to_object(gravedetect_obj)<1{
    instance_destroy();
}

if distance_to_object(typeplant2_obj)<10{
    if instance_nearest(x,y,typeplant2_obj).in_danger==true{
        instance_destroy();
    }
}

