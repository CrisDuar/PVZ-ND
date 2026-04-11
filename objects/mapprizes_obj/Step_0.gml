//clone the movement from the object's speed and direction
if distance_to_object(parentisla_obj)<1{
    var obj_island = instance_nearest(x,y,parentisla_obj)
    yy=obj_island.yy
}

y=ystart+yy

if (read_progress(cond) > lvl)
{image_speed=0.16; sprite_index=sprite}
else
{sprite_index=locked}

image_speed=0.16

//offset
offset_x = sprite_width/2;
offset_y = (sprite_height*3)/4;

