obj=collision_line_first(x-4,y-49+sprite_height,x+4,y-49*image_yscale,typeplant2_obj,false,false)

if obj.in_danger==true{
    obj=collision_line_first(x-4,y-49+sprite_height,x+4,y-49*image_yscale,garlicdrone_obj,false,false)
}

with(obj){
    if shovel{
        if instance_exists(menusol_obj) plant_return_sun();
        instance_destroy();
    }
}
/*
if distance_to_object(saveseedcasilla_obj)>0{
    obj=collision_line_first(x-4,y-49+sprite_height,x+4,y-49*image_yscale,typeplant2_obj,false,false)
    with(obj){if (shovel){if instance_exists(menusol_obj){plant_return_sun()}; instance_destroy()}}
}else{
    obj=collision_line_first(x-4,y-49+sprite_height,x+4,y-49*image_yscale,garlicdrone_obj,false,false)
    with(obj){if (shovel){if instance_exists(menusol_obj){plant_return_sun()}; instance_destroy()}}
}*/
instance_destroy();


/* */
/*  */
