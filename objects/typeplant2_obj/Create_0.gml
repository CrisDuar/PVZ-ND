image_index=irandom_range(0,image_number)
//mod
xmod = 1

//battles
dmg = 0
//sine movement
yy=0
up=0
shake=0
lph_mod = 1

//Endangered plants
in_danger=false
lph_dngr = 1

//costumes
disfraz=0

plant_cost=0
tilexx=0
tileyy=0

vida=100
maxhp=vida
vidaDif = vida;
img=0.16

water=false
candrown=true

canpoison=true
poison=false
poisontime=0
particle=0

sleep=false
cancoffee=false

canhit = true//Para saber si puede ser detectado por los zombis que disparan

c_frost=make_colour_rgb(137,217,255)
freeze=false
timefreeze=0

wall=false
wallbroken=false
wall_id=-1

tile_plant=0
aquatic=0
shovel=true
costume_img = -1
obj_danger = noone

overlay = 0//cuando se aplasta
overlay_cos = 0//cuando se aplasta
burned_sprite = noone//cuando se aplasta
//aquatic: 0 ground and lilypad; 1 aquatic; 2 both (can be on lilypad); 3 only ground; 4 both (cannot be on lilypad), 5 for pumpkin (other plants and lilypads, but not pumpkins);

inmo = false

if (global.nivelterminado == false){
    logros_obj.healthy_garden_start = true;
}

init = false;

