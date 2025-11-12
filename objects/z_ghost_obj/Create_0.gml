event_inherited();
vida=200
maxhp = 200
waitsprite=ghost1_spr
name_esp="Zombi Fantasma"
name_eng="Ghost Zombie"

canhand=false
tradie=false
canwater=false

inv=false

walkspeed=-0.25

t=60

//Particulas de humo
part=part_system_create()
part_system_depth(part, -y-15 );
p1=part_type_create()
part_type_shape(p1, pt_shape_explosion);
part_type_size(p1, 0.01, 0.35, 0, 0);
part_type_color2(p1, c_gray, c_white);
part_type_alpha3(p1, 0.5, 1,0);
part_type_speed(p1, 0., 1, 0.05, 0);
part_type_direction(p1, 20, 80, 0, 2);
part_type_life(p1, 20, 40);

