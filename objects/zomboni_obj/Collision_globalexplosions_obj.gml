if explo==false{
    explo=true
    with(drop(x-30,y-45,zombonipart2_spr,0,false,image_blend,y,depth-10)){vspeed=choose(-9,-10)}
    drop(x+15,y-5,zombonipart1_spr,0,false,image_blend,y,depth-10)
    repeat(3) with(drop(x+irandom_range(-50,50),y+irandom_range(-50,25),zombonipart1_spr,1,false,image_blend,y,depth-10)){vspeed=choose(-3,-10)}
    part_particles_create(control_obj.part, x-random_range(-10,12), y-40, control_obj.p1, 40);
    create_explosion(x,y,1,3,2.6,machineexplosion_obj)
    instance_create(x+30,y,quemado_obj)
}
zombiedrop(false)
instance_destroy();

