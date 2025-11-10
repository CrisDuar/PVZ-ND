obj=-1
og=-1
cooldown=room_speed
_dir = 0
_dist = 0
_diff = 0
timer=60*25
minspd=4
speed=4
dmg=20

part=part_system_create()
part_system_depth(part, 640);
p1=part_type_create()

part_type_shape(p1,pt_shape_square);
part_type_color2(p1,make_colour_rgb(255,227,227),make_colour_rgb(242,142,157));
part_type_alpha3(p1,0.5,1,0)
part_type_life(p1,10,15);
part_type_speed(p1,4,8,0,0)
part_type_direction(p1,direction+160,direction+200,0,0)
part_type_size(p1,0.05,0.15,0,0);

if !instance_exists(eatfather_obj){
    instance_destroy();
}

