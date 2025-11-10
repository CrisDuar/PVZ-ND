event_inherited();

broke=sporebroke_spr
spr = goop_spr
particle=-1

part=part_system_create()
part_system_depth(part, -y-117);
p1=part_type_create()

part_type_sprite(p1,poisonpart_spr,0,0,1);
part_type_size(p1,0.5,1.5,-0.005,0);
part_type_color2(p1,c_fuchsia,c_dkgray);
part_type_alpha3(p1,1,1,0);
part_type_direction(p1,85,125,0,1);
part_type_speed(p1,0.25,1.5,0,0);
part_type_life(p1,2,8);

