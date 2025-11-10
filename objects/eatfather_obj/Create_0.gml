depth=-y-10;
image_index=random_range(0,image_number-1)
surf=-1

vida = 100
puertavida=0

maxhp_door=0
maxhp = 100
name_esp="Zombi"
name_eng="Zombie"
alarm[4]=60*random_range(5,30)

horde_state=true//Aporta a la horda o no
horde_id=-1

water=false
y_wtr = 0
yy=0
shake=0
jumpwater=1

//Time where, if the zombie dies, spawns a mini morpho
morpho_t = 0
//Can become a morpho?
morpho_a = true

hipno=false

damage=0
motivated=false
kelp=false
money=true
bite=false

garlic_yy=get_closest_row(y)
lph_mod = 1

gameover=false
dogameover=false
gameover_destroy = false
gameover_eat = false;

velocidaddeimagen=0.18
walkspeed=-0.25
imagespeed1=0.18//eat
imagespeed2=-walkspeed//walk

comiendo=false
soltarbrazo=false
soltarproteccion=false
caneat=true
eat_dmg = 15

hurtsnd=pointer_null
hurt2snd=pointer_null

//blover & cotton
peso=0

//CONGELADO
c_frost=make_colour_rgb(137,217,255)
congelado=false
timecongelado=0
stop=false
timestop=0
frozenstop=0
dropice=false

//goop time
canpoison=true
gooptime=0
goopdmg=30
goopstun = 0

//electrificado
electro=false
electroimg=0

headspr=0
bodyspr=zombieded_spr
handspr=0
waitsprite=choose(zombiequieto_spr,zombiequieto2_spr)

eatgarlic=true
canspeed=true
tradie=true
canhand=true
canfreeze=true
canwater=true
canwateranim=true

isdoor=false

xmod = 1
dpth = 10;

if object_index!=ghost_obj{
    if (point_in_rectangle(x,y,305,284,1100,423) and __background_get( e__BG.Index, 0 )=poolday_bg)
    or (collision_rectangle(x-40,y-10,x-10,y+30,charco_obj,false,false)){
        y_wtr=30
    }else{
        y_wtr=0
    }
}

