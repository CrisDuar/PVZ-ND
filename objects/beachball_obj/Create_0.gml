event_inherited();

waitsprite=beachballpreview_spr
name_esp="Bola de Playa"
name_eng="Beach Ball"
active=false

y3_h = -40

if instance_exists(typeplant_obj){
    obj = instance_nearest(random(room_width),random(room_height),typeplant_obj)
    with(obj){
        if in_danger instance_destroy(other)
    }
}else if global.iniciogame=true{
    instance_destroy();
}

image_alpha=0
alarm[0]=room_speed*random_range(0.1,1.5)

