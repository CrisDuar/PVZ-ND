event_inherited();

img=0.18

if sprite_index=imgshot{
    if image_index>=10 and disparando=false{
        audio_play_sound(choose(pea_shoot_snd,pea_shoot2_snd), 1, false);
        with(instance_create(x+25,y-40,pea_obj)){sprite_index=seed_spr; yy=15}
        disparando=true
    }
    
    if image_index>=image_number-0.5{
        sprite_index=imgidle
        image_index=0
        image_speed=0.16
        disparando=false
    }
}
var proceed = false;

if instance_exists(eatfather_obj){
    with(eatfather_obj){ //Checar si alguna planta pasa el filtro para que pueda disparar
        if collision_rectangle(other.bbox_left,other.y-20,other.x+132,other.y+15,self, true, false)//point_in_rectangle(x,y,other.x,other.y-20,other.x+132,other.y+15)
        and object_index!=beachballdrop_obj
        and object_index!=z_balloon_obj{
            proceed = true;
            break;
        }
    }
}

if proceed==true  a=true

if a==true{
    vida=100
    cadencia=0
    hspeed=7
    sprite_index=guacodrilo3_spr
    if x>=1180 instance_destroy();
    //profundidad
    depth=-y-20
}
/*
if (collision_rectangle(305,284,1055,423,self,false,false)
and background_index[0]=poolday_bg)
and (distance_to_object(nenufar_obj)>0)
or (distance_to_object(charco_obj)<1 and distance_to_object(nenufar_obj)>0){
water=true
}else{
water=false
}

/* */
/*  */
