event_inherited();
peso=1000
vida=300
maxhp=300
waitsprite=sunmachine1_spr
hspeed=-1
canfreeze=false
canpoison=false
c_frost=c_white
alpha=0

hurtsnd=baldehurt1_snd
hurt2snd=baldehurt2_snd

name_esp="Sun panel"
name_eng="Panel solar"

t=0
maxt = 60*8

image_speed=0

//Particles
part=part_system_create()
part_system_depth(part, -y-15 );
p1=part_type_create()
part_type_shape(p1, pt_shape_smoke);
part_type_size(p1, 0.01, 0.35, 0, 0);
part_type_color3(p1, c_dkgray, c_gray, c_white);
part_type_alpha2(p1, 0.5, 1);
part_type_speed(p1, 0., 1, 0.05, 0);
part_type_direction(p1, 20, 80, 0, 2);
part_type_life(p1, 20, 40);

