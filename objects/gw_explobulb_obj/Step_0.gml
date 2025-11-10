depth=-y-118

t+=0.0125

x2= (objx + x1)/2 //punto2
y2= objy-500

x = (power((1-t),2) * x1) + (2*(1-t)*t*x2) + (power(t,2) * objx)
y = (power((1-t),2) * y1) + (2*(1-t)*t*y2) + (power(t,2) * objy)

image_angle+=2.5

if t == 1{
instance_create(x,y,powie_obj)
part_particles_create(control_obj.part, x-random_range(-10,12), y, control_obj.p1, 40);
create_explosion(x,y+10,0,3,3,bulboexplota_snd)
instance_destroy();
}

