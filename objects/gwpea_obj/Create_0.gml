event_inherited();
spd=13
spd_max=13

hspd_max=0
hspd=0

type=1//0ice 1normal 2fire

part=part_system_create()
part_system_depth(part, -y-90);
p1=part_type_create()

part_type_sprite(p1,firepart_spr,0,0,1);
part_type_size(p1,0.25,1.25,-0.005,0);
part_type_orientation(p1,0,360,0,0,0);
part_type_color2(p1,c_orange,c_red);
part_type_alpha3(p1,1,1,0);
part_type_blend(p1,1);
part_type_direction(p1,85,125,0,1);
part_type_speed(p1,0.25,1.5,0,0);
part_type_life(p1,2,8);

