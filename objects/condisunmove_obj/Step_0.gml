direction = point_direction(x,y,menusol_obj.x-64,menusol_obj.y);
speed = point_distance(x,y,menusol_obj.x-64,menusol_obj.y)/20;


if distance_to_object(menusol_obj)<1{
image_alpha-=0.04
image_xscale-=0.03
image_yscale-=0.03
num-=0.1
}

if image_alpha<=0{
instance_destroy();
}

image_angle+=2+num

