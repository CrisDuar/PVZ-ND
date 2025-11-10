x=260
y=get_closest_row(y)

if vida<=0{
    global.brains+=1
    instance_create(x,y,plate_obj)
    instance_destroy();
}

if image_alpha<1 image_alpha+=0.05


