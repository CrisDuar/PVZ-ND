//Draw shadows if the video quality is enough

//Temp
if (!layer_exists("Instances")) layer_create(0, "Instances")
if (!layer_exists("GUI")) layer_create(-998, "GUI")
if (!layer_exists("Control")) layer_create(-9099, "Control")

if (global.videoq > 0) instance_create_layer(x,y,"Control", draw_shadows_obj)
save_struct = true;
do_load_level = true;

//level limits
lim_top = 73;
lim_bottom = 597;
lim_left = 275;
lim_right = 1100;

//Stage
/*
	tutorial/unsodded: 0 & 1
	frontyard: 2
	pool: 3
	claire: 4
	park: 5
*/

//Level type
stage = 0;

//Day: 0, Sunset: 1, Night: 2
daytime = 0;

//Gravestones
graves = 5; 
maxgraves = 7;
gravesTypes = [
    { grave: zomgrave_obj },
    { grave: grave3_obj },
    { grave: grave1_obj },
    { grave: grave2_obj },
    {
        grave: grave4_obj,
        spawnStart: false,
        respawnTime: 120
    },
    {
        grave: grave6_obj,
        respawnTime: 90
    },
    { grave: grave5_obj },
    { grave: soulgrave_obj },
    { grave: drheals_obj },
    { grave: grave7_obj },
    { grave: grave8_obj },
    { 
        grave: grave9_obj,
        spawnStart: false,
    }
    
]

//Backgrounds for levels
bgs_lvl = [
	[_state1_bg],
	[_state2_bg],
	[_state3_bg, afternoon_bg, night_bg],
	[poolday_bg, poolsunset_bg, poolnight_bg],
	[claire2_bg, claire3_bg, claire_bg],
	[park1_bg]
]

//Lawnmowers
mowers = [0, 0, 0, 0, 0]

//Limit position
limit = 1600

//On game over
scream_type = 0;

//Init stage variables
init_stage = false;
ambient = false;

//Zombies
z_motivated = false; //Motivation for level 11.
kamistatues = false;
invisible = false;

terminado=false

multijugador=false

time=16
sunday=false//It should be "sunset" but i can't change it lmao
night=false

//Sun
soles = 0
zomes = 0
drawsoles = soles
drawzomes = zomes
//for sun sfx
sunpitch=0.95
//Can you bring sun producers
cansun=true
//Spawn zombie suns
spawnzomes=false
//How often does sun fall from the sky (in seconds)
sun_delay = 20

//Is an endless level?
endless = false;

global.zombieswin=false

//Weather
rain=false
windy=false
wind=false

//Leaves particles in the park
leaves = false;
leaves_t = 0;

//Initialize sun and lawnmowers
start_sun=false

//shake
shake = 0;
vy=0
vx=0

gmov_a = 0 //Game over alpha

//Plant selected
seleccionado = 0
//Zombie selected
zomseleccionado = 0
drawselect=0

//Shovel enabled
pala=false

//Whack a zombie
mazo=false

global.gameover = false
global.nivelterminado = false

//Initialize rain
alarm[1]=60*random_range(15,30)

//if !instance_exists(trazo_obj){instance_create(1600,76,trazo_obj)}
/*
//if room!=izombie_rm{
    switch(__background_get( e__BG.Index, 0 )){
        default:
            spawn_tiles(pastoinv_obj)
        break
        
        case _state1_bg:
            spawn_tiles(pastoinv_obj,"","","","",2,3)
        break
        
        case _state2_bg:
            spawn_tiles(pastoinv_obj,"","","","",1,4)
        break
        
        case poolday_bg:
        case poolsunset_bg:
        case poolnight_bg:
            spawn_tiles(pastoinv_obj,"","",0.85,"",0,2,70,0.99)
            spawn_tiles(pastoinv_obj,"","",0.85,true,0,2,252,0.99)
            spawn_tiles(pastoinv_obj,"","",0.85,"",0,2,448,0.99)
        break
    }
    
if __background_get( e__BG.Index, 0 ) == claire_bg
or __background_get( e__BG.Index, 0 ) == claire2_bg
or __background_get( e__BG.Index, 0 ) == claire3_bg{
    scream_type = 2
}
    
//}
//night
if __background_get( e__BG.Index, 0 )==night_bg 
or __background_get( e__BG.Index, 1 )==poolnight_bg
or __background_get( e__BG.Index, 0 )==claire_bg{night=true}

//sunset
if __background_get( e__BG.Index, 0 )==afternoon_bg 
or __background_get( e__BG.Index, 1 )==poolsunset_bg{sunday=true}
*/

switch(room){
	case levelhard1_5_rm:
		spawnzomes=true
	break

	case levelhard2_3_rm:
	case nivel42_rm:
	case nivel71_rm:
		cansun=false
	break

	case nivel24_rm:
		kamistatues=true
	break

	case izombie_rm:
		scream_type = 3
	break
}

reset_costumes();

#region Particles

//Explosion cherry bomb
part=part_system_create();
part_system_depth(part, -970);

p1=part_type_create();

part_type_sprite(p1,firepart_spr,0,0,1);
part_type_size(p1,1.75,3,-0.05,0);
part_type_orientation(p1,0,360,0,0,0);
part_type_color2(p1,c_orange,c_red);
part_type_alpha3(p1,1,1,0);
part_type_blend(p1,1);
part_type_direction(p1,0,360,0,1);
part_type_speed(p1,3,5,-0.005,0);
part_type_life(p1,25,30);

//Explosion Single cherry
p2=part_type_create();

part_type_sprite(p2,firepart_spr,0,0,1);
part_type_size(p2,1.75,3,-0.05,0);
part_type_orientation(p2,0,360,0,0,0);
part_type_color2(p2,c_orange,c_red);
part_type_alpha3(p2,1,1,0);
part_type_blend(p2,1);
part_type_direction(p2,0,360,0,1);
part_type_speed(p2,3,5,-0.005,0);
part_type_life(p2,25,30);

//projectiles particles
p3=part_type_create();

part_type_sprite(p3,peaparticle_spr,0,0,1);
part_type_alpha3(p3,1,1,0);
part_type_direction(p3,0,360,0,1);
part_type_speed(p3,2,6,0,0);
part_type_gravity(p3,0.5,270);
part_type_life(p3,10,25);

//Small explosion

p4=part_type_create();

part_type_sprite(p4,firepart_spr,0,0,1);
part_type_size(p4,0.25,1.25,-0.005,0);
part_type_orientation(p4,0,360,0,0,0);
part_type_color2(p4,c_orange,c_red);
part_type_alpha3(p4,1,1,0);
part_type_blend(p4,1);
part_type_direction(p4,0,360,0,1);
part_type_speed(p4,0.25,2,0,0);
part_type_life(p4,8,24);

//Poison

p5=part_type_create();

//part_type_shape(p5, pt_shape_cloud)
part_type_sprite(p5,poisonpart_spr,0,0,1);
part_type_size(p1,3,5,-0.05,0);
//part_type_orientation(p5,0,360,0,0,0);
part_type_color2(p5,c_fuchsia,c_dkgray);
part_type_alpha3(p5,0.2,0.7,0);
//part_type_blend(p5,1);
part_type_direction(p5,0,360,0,1);
part_type_speed(p5,0.25,2,0,0);
part_type_life(p5,20,30);



//Rain Particle
p6 = part_type_create();
part_type_shape(p6,pt_shape_line);
part_type_size(p6, 0.25, 0.25, 0, 0);
part_type_color1(p6, c_white);
part_type_alpha2(p6, 0.25, 0.25);
part_type_gravity(p6, 0.1, 290);
//part_type_speed(p6, 0.5, 0.5, 0, 0);
part_type_direction(p6, 280, 330,0,1);
part_type_orientation(p6,290, 290, 0, 0, 0);
part_type_life(p6,60/2,60*2.2);


//splash
p7 = part_type_create();
part_type_sprite(p7,agua2_spr,true,true,false);
part_type_size(p7, 0.25, 0.25, 0, 0);
part_type_alpha2(p7, 0.25, 0);
part_type_life(p7,15,30);
part_type_blend(p7,1);
part_type_death(p6, 1, p7);

//Dr. heals liquid
p8 = part_type_create();
part_type_sprite(p8,firepart_spr,0,0,1);
part_type_size(p8,0.15,0.55,0.05,0);
part_type_orientation(p8,0,360,0,0,0);
part_type_color2(p8, c_fuchsia,c_dkgray);
//part_type_sprite(p8,poisonparticle2_spr,false,false,false);
part_type_alpha2(p8, 0.5, 0);
part_type_life(p8,20,20);
part_type_speed(p8, 6, 6, 0, 0);
part_type_gravity(p8, 0.3, 270);
part_type_direction(p8, 0, 360,0,5);

//Dr. heals heals
p9 = part_type_create();
part_type_sprite(p9,liveparticle2_spr,false,false,false);
part_type_alpha3(p9, 0, 1, 0);
part_type_life(p9,15,30);
part_type_speed(p9, 3, 3, 0.01, 0);
part_type_direction(p9, 90, 90,0,0);

//Dr. heals trail
p10 = part_type_create();
part_type_sprite(p10,firepart_spr,0,0,1);
part_type_size(p10,0.5,1,-0.05,0);
part_type_orientation(p10,0,360,0,0,0);
part_type_color2(p10,make_colour_rgb(180,94,222),c_dkgray);
//part_type_sprite(p10,poisonparticle2_spr,false,false,false);
part_type_alpha2(p10, 0.25, 0);
part_type_life(p10,15,30);
part_type_step(p8, 1, p10);


//Explosion toxic shroom
p11=part_type_create();

part_type_sprite(p11,poisonpart_spr,0,0,1);
part_type_size(p11,1.75,3,-0.05,0);
part_type_color2(p11,c_fuchsia,c_dkgray);
part_type_alpha3(p11,1,1,0);
part_type_direction(p11,0,360,0,1);
part_type_speed(p11,3,5,-0.005,0);
part_type_life(p11,25,30);

//cotton blow small
p12=part_type_create();

part_type_sprite(p12,cottonblow_spr,1,1,0);
part_type_size(p12,0.25,1.25,0,0);
part_type_life(p12,80,80);

//sweat zombie
p13=part_type_create();

part_type_sprite(p13,sweatpart_spr,0,0,0);
part_type_speed(p13, 0, 2, 0, 0);
part_type_alpha3(p13,0.8,0.5,0);
part_type_direction(p13, 30, 150, 0, 0);
part_type_gravity(p13, 0.20, 270);
part_type_size(p13,1,4,-0.15,0);
part_type_life(p13,20,40);

//ocular tree eye
p14=part_type_create();

part_type_sprite(p14,eyepart_spr,0,0,0);
part_type_alpha2(p14,1,0);
part_type_size(p14,1,1,0.1,0);
part_type_life(p14,10,10);


//wind particle
p15 = part_type_create();
part_type_sprite(p15,windpart_spr,0,0,0);
part_type_size(p15, 0.15, 0.75, 0, 0);
part_type_speed(p15, 5, 10, 0, 0);
part_type_direction(p15, 180, 180, 0, 0);
part_type_alpha3(p15, 0, 0.75, 0);
part_type_life(p15,15,30);

//cotton blow big
p16=part_type_create();

part_type_sprite(p16,cottonblow_spr,1,1,0);
part_type_size(p16,3,3.2,0,0);
part_type_life(p16,80,80);

//fumeshroom bubbles
p17=part_type_create();

part_type_sprite(p17,fume_spr,0,0,1);
part_type_alpha2(p17,1,0)
part_type_speed(p17,6,13,-0.1,0)
part_type_direction(p17,-5,5,0,0)
part_type_life(p17,25,30);

//mago sparks
p18=part_type_create();

part_type_sprite(p18,magopart_spr,1,1,0);
part_type_alpha2(p18,1,0)
part_type_life(p18,7,20);
part_type_speed(p18,2,5,-0.1,0)
part_type_direction(p18,-0,359,0,0)
part_type_size(p18,0.25,1.25,0,0);

//Lightning bolt sparks
p19=part_type_create();

part_type_shape(p19,pt_shape_square);
part_type_color2(p19,make_colour_rgb(227,255,240),make_colour_rgb(142,242,189));
part_type_alpha3(p19,0.5,1,0)
part_type_life(p19,10,15);
part_type_speed(p19,4,8,0,0)
part_type_direction(p19,15,165,0,0)
part_type_size(p19,0.05,0.15,0,0);
part_type_blend(p19,1);
part_type_gravity(p19,0.4,270);

//Explosion Hielo
p20=part_type_create();
part_type_shape(p20,pt_shape_snow);
part_type_size(p20,0.25,0.75,-0.025,0);
part_type_orientation(p20,0,360,0,0,0);
part_type_color2(p20,c_white,c_aqua);
part_type_alpha3(p20,1,1,0);
part_type_blend(p20,1);
part_type_direction(p20,0,360,0,1);
part_type_speed(p20,5,8,-0.02,0);
part_type_life(p20,30,35);

//Ghost pepper particles
p21=part_type_create();

part_type_shape(p21,pt_shape_square);
part_type_color2(p21,make_colour_rgb(227,249,255),make_colour_rgb(136,155,178));
part_type_alpha3(p21,0.5,1,0)
part_type_life(p21,10,15);
part_type_speed(p21,4,8,0,0)
part_type_direction(p21,80,100,0,0)
part_type_size(p21,0.05,0.15,0,0);

//darkness

p22=part_type_create();

part_type_shape(p22,pt_shape_square);
part_type_size(p22,0.25,0.75,0,0);
part_type_color1(p22,c_black);
part_type_alpha3(p22,0.2,0.7,0);
part_type_direction(p22,100,260,0,1);
part_type_speed(p22,2,7,0,0);
part_type_life(p22,30,40);

//Plantern explosion

//Explosion Hielo
p23=part_type_create();
part_type_shape(p23,pt_shape_spark);
part_type_size(p23,0.25,0.75,-0.025,0);
part_type_orientation(p23,0,360,0,0,0);
part_type_color2(p23,c_yellow,c_white);
part_type_alpha3(p23,1,1,0);
part_type_blend(p23,1);
part_type_direction(p23,0,360,0,1);
part_type_speed(p23,5,8,-0.02,0);
part_type_life(p23,30,35);

//doomshroom 1
p24=part_type_create();

part_type_sprite(p24,firepart_spr,0,0,1);
part_type_size(p24,1.75,3.25,0.001,0.125);
part_type_orientation(p24,0,360,4,1.5,0);
part_type_color2(p24,make_color_rgb(249, 198, 255),make_color_rgb(253, 0, 200));
part_type_alpha2(p24,0.25,0);
part_type_blend(p24,1);
part_type_direction(p24,0,360,0,1);
part_type_speed(p24,0,0,0.005,0);
part_type_life(p24,240,300);

//doomshroom 1
p25=part_type_create();

part_type_sprite(p25,firepart_spr,0,0,1);
part_type_size(p25,2.5,4,0.001,0.25);
part_type_orientation(p25,0,180,3,1,0);
part_type_color2(p25,make_color_rgb(130, 0, 166),make_color_rgb(53, 0, 97));
part_type_alpha2(p25,0.5,0);
part_type_blend(p25,1);
part_type_direction(p25,0,180,0.005,1);
part_type_speed(p25,0,0,0.005,0);
part_type_life(p25,240,300);

//leaves
//doomshroom 1
p26=part_type_create();

part_type_sprite(p26,partleave_spr,0,0,0);
part_type_size(p26,1,1,0,0);
part_type_orientation(p26,0,360,2,0.5,0);
part_type_alpha3(p26,0.5, 1,0);
part_type_direction(p26,270,359,-0.5,0.2);
part_type_speed(p26,0.5,1,0,0);
part_type_life(p26,60,90);
part_type_gravity(p26,0.015,270);

p27=part_type_create();

part_type_sprite(p27,partleave2_spr,0,0,1);
part_type_size(p27,1,1,0,0);
part_type_orientation(p27,0,360,2,0.5,0);
part_type_alpha3(p27,0.5, 1,0);
part_type_direction(p27,270,359,-0.5,0.2);
part_type_speed(p27,0.5,1,0,0);
part_type_life(p27,30,60);
part_type_gravity(p27,0.015,270);

//falling leaves Particle
p28 = part_type_create();
part_type_sprite(p28,partleave3_spr,0,0,0);
part_type_alpha3(p28, 1, 1, 0);
part_type_gravity(p28,0.03, 290);
part_type_speed(p28, 0.5, 1, 0, 0);
part_type_direction(p28, 280, 330,0,1);
part_type_orientation(p28,0,360,2,0.5,0);
part_type_life(p28,60,60*4);

//Sun bean
p28=part_type_create();

part_type_shape(p28,pt_shape_square);
part_type_size(p28, 0.1, 0.2, 0,0);
part_type_color2(p28,c_yellow, c_white);
part_type_alpha3(p28, 0.2, 1, 0);
part_type_direction(p28,70,110,0,1);
part_type_speed(p28,2,7,0,0);
part_type_life(p28,30,40);

#endregion