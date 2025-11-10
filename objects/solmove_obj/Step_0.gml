if instance_exists(obj){
    objx=obj.x+w
    objy=obj.y
}

if distance_to_point(objx, objy)<=25{
    image_alpha-=0.04
    image_xscale-=0.03
    image_yscale-=0.03
    num-=0.1
}

direction = point_direction(x,y,objx,objy);
speed = point_distance(x,y,objx,objy)/20;

if (image_alpha<=0) instance_destroy();


image_angle+=2+num

