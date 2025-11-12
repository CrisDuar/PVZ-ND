event_inherited();
peso=1000
vida=1000
maxhp = 1000
hurtsnd=baldehurt1_snd
hurt2snd=baldehurt2_snd
name_esp="Zombictor"
name_eng="Zomboni"
waitsprite=zomboni1_spr
sound=false

walkspeed=-0.2
imagespeed2=0.12

c_frost=c_white
congelado=false
canfreeze=false
canhand=false
tradie=false
caneat=false
canpoison=false
shake=0

explo=false

part=part_system_create()
part_system_depth(part, -y-15);
p1=part_type_create()
part_type_shape(p1, pt_shape_smoke);
part_type_size(p1, 0.01, 0.35, 0, 0);
part_type_color3(p1, c_dkgray, c_gray, c_white);
part_type_alpha2(p1, 0.5, 1);
part_type_speed(p1, 0., 1, 0.05, 0);
part_type_direction(p1, 20, 80, 0, 2);
part_type_life(p1, 20, 40);

if (room = iplant_rm) and (y == zombispawn_obj.f3 or y == zombispawn_obj.f4) and (__background_get( e__BG.Index, 0 )=poolday_bg or __background_get( e__BG.Index, 0 )=poolsunset_bg or __background_get( e__BG.Index, 0 )=poolnight_bg){
    y = choose(zombispawn_obj.f1, zombispawn_obj.f2, zombispawn_obj.f5, zombispawn_obj.f6)
    garlic_yy = y;
}

