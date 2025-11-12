event_inherited();
soltarproteccion=true
vida = 150
maxhp = 150

handspr=2
bodyspr=molotovded_spr
headspr=14

waitsprite=molotovidle1_spr
name_esp="Zombi Molotov"
name_eng="Molotov Zombie"

sfx = false
t = 0//Timer para que tire la molotov
time = 60*3 //Tiempo de gracia antes de que tire la molotov
ready = false //Ya alcanzó el punto para tirar la molotov?
throwed = false//Ya tiró la molotov?
molotov = false//Crear la molotov una única vez
fire = true //La molotov está incendiada?
state = 0//En qué estado está?
max_x = irandom_range(900,1000)

if room=iplant_rm or control_obj.multijugador==true{
    max_x = trazo_obj.x
    time = 1//room_speed * 0.5
}

//Coordenadas del fuego de la molotov
mlv_xx=0
mlv_yy=0
show=true

//Iluminar en la niebla
glow=0
glow_power=0.25
glow_alpha=0

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

vstile_x = 0
vstile_y = 320

