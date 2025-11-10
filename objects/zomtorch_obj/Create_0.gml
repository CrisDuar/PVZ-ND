event_inherited();
handspr=7
headspr=6
bodyspr=torchded_spr

vida = 100
maxhp = 100
walkspeed=-0.35
imagespeed2=0.22
waitsprite=zomtorch0_spr
fire=true

name_esp="Zombi Antorcha"
name_eng="Torch Zombie"

glow=0
glow_power=0.25
glow_alpha=0

if room==izombie_rm{
    glow_power=1.7
}

//Sistema de partículas
part=part_system_create()
part_system_depth(part, 0);
p1=part_type_create()

part_type_sprite(p1,firepart_spr,0,0,1);
part_type_size(p1,0.1,0.8,-0.005,0);
part_type_orientation(p1,0,360,0,0,0);
part_type_color2(p1,c_orange,c_red);
part_type_alpha3(p1,1,1,0);
part_type_blend(p1,1);
part_type_direction(p1,85,125,0,1);
part_type_speed(p1,0.25,2,0,0);
part_type_life(p1,20,35);

