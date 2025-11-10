direction = point_direction(x,y,moneycounter_obj.x,moneycounter_obj.y);
speed = point_distance(x,y,moneycounter_obj.x,moneycounter_obj.y)/20;

if distance_to_object(moneycounter_obj)<1{
    image_alpha-=0.04
}

if image_alpha<=0{
instance_destroy();
}

a+=dlt/2

