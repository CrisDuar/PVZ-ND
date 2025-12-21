part=part_system_create()
part_system_depth(part, -y+21);
p1=part_type_create()

part_type_sprite(p1,firepart_spr,0,0,1);
part_type_size(p1,0.25,1.25,-0.005,0);
part_type_orientation(p1,0,360,0,0,0);
part_type_color2(p1,c_orange,c_red);
part_type_alpha3(p1,1,1,0);
part_type_blend(p1,1);
part_type_direction(p1,85,125,0,1);
part_type_speed(p1,0.25,2,0,0);
part_type_life(p1,20,35);
part_system_automatic_draw(part,false)

unit_ban = false;
bans = 0;
depth = -997
image_speed=0
vspeed=-15
spawngui=false
down=false
//posy=-15

mp=0
alpg=0
slots=5
global.playerReady=false


//Pages
pag=0
maxpag=0
zompag=0
zommaxpag=0

//This is for the numbers in the CYS
num_pag = 0;
/*
hp1=0
hp2=1
hp3=2
hp4=3
hp5=4

hz1=0
hz2=1
hz3=2
hz4=3
hz5=4
*/
grass=0
unitcost=""
unitname_es=""
unitname_en=""
unitsprite=0
islock = false;
plant = -1
zomplant = 0

opacidad=0
xx=326
yy=0
up=0

subimage=0
imagespeed=0
maximage=0

//For non entirely locked and loaded levels
lockdone = false

//Arrays que contienen todas las plantas
p[0]=0
z[0]=0

if instance_exists(menuplants_obj) instance_destroy(menuplants_obj)
if instance_exists(menuzombi_obj) instance_destroy(menuzombi_obj)

if instance_exists(menusol_obj) instance_destroy(menusol_obj)
if instance_exists(menuzom_obj) instance_destroy(menuzom_obj)

//ds_list_create(); (lvl, niveles_levelhard, packet, sprite, locked, name_es, name_en, page, cost, background, plant sprite, type)

var vscost = 0

//Positions in the Array
var _index = 0;

//Page num
var _pnum = 0;

//Load plants
for (var i = 0; i < array_length(global.plants_packets); i++){
	
	if (_pnum >= 6){
		maxpag++;
		_pnum = 0;
	}
	
	if (struct_get_default(global.plants_packets[i], "ignore", false) == false){
	
		var alm_ind = global.almanac_map[? "p" + string(i)];
		
		p[_index] = [
			global.almanac_data[# almanac_data.LEVEL, alm_ind],//lvl
			global.almanac_data[# almanac_data.COND, alm_ind],//cond
			i,//packet_id
			asset_get_index(global.almanac_data[# almanac_data.LOCKED_SPR, alm_ind]),//locked
			global.almanac_data[# almanac_data.NAME_ES, alm_ind],//name_es
			global.almanac_data[# almanac_data.NAME_EN, alm_ind],//name_en
			maxpag,//page
			real(global.almanac_data[# almanac_data.BG, alm_ind]),//bg
			asset_get_index(global.almanac_data[# almanac_data.UNIT_SPR, alm_ind]),//plantsprite
			0//type
		]
		
		_pnum++;
		_index++;
	}
}

_pnum = 0;
_index = 0;

//Load zombies
for (var i = 0; i < array_length(global.zombies_packets); i++){
	
	if (_pnum >= 6){
		zommaxpag++;
		_pnum = 0;
	}
	
	if (struct_get_default(global.zombies_packets[i], "ignore", false) == false){
		
		var alm_ind = global.almanac_map[? "z" + string(i)];
		
		z[_index] = [
			global.almanac_data[# almanac_data.LEVEL, alm_ind],//lvl
			global.almanac_data[# almanac_data.COND, alm_ind],//cond
			i,//packet_id
			asset_get_index(global.almanac_data[# almanac_data.LOCKED_SPR, alm_ind]),//locked
			global.almanac_data[# almanac_data.NAME_ES, alm_ind],//name_es
			global.almanac_data[# almanac_data.NAME_EN, alm_ind],//name_en
			zommaxpag,//page
			real(global.almanac_data[# almanac_data.BG, alm_ind]),//bg
			asset_get_index(global.almanac_data[# almanac_data.UNIT_SPR, alm_ind]),//plantsprite
			1//type
		]
		
		_pnum++;
		_index++;
	}
}

/*
lvl=_list[0];
cond=_list[1];
packet=_list[2];
sprite=_list[3];
locked=_list[4];
name_es=_list[5];
name_en=_list[6];
page=_list[7];
cost=_list[8];
bg=_list[9];
plantsprite=_list[10];
type=_list[11];

name_es = global.almanac_data[# 0, i]
name_en = global.almanac_data[# 1, i]
lvl = real(global.almanac_data[# 2, i])
cond = global.almanac_data[# 3, i]
sprite= asset_get_index(global.almanac_data[# 4, i])
locked= asset_get_index(global.almanac_data[# 5, i])
cost = real(global.almanac_data[# 6, i])
plantsprite= asset_get_index(global.almanac_data[# 7, i])
bg = real(global.almanac_data[# 8, i])
*/


//pag1
/*if sprite_index!=menuselectzomb_spr{//plants
if control_obj.multijugador==true vscost = 75 else vscost = 100; p[0]=array(0, "niveles", menupea_obj, menupea1_spr, bloqplant_spr, "Lanzaguisantes", "Peashooter", maxpag, vscost, 0, peashooter_spr,0)
p[1]=array(1, "niveles", menusun_obj, menusun1_spr, bloqplant_spr, "Girasol", "Sunflower", maxpag, 50, 0, sunflower_spr,0)
p[2]=array(2, "niveles", potatommenu_obj, potatomslot1_spr, bloqplant_spr, "Patatapum", "Potato Mine", maxpag, 25, 0, potatomine3_spr,0)
p[3]=array(3, "niveles", menunut_obj, nutslot1_spr, bloqplant_spr, "Nuez", "Wall-Nut", maxpag, 50, 0, nut1_spr,0)
p[4]=array(5, "niveles", cherrymenu_obj, cherryslot1_spr, bloqplant_spr, "Petacereza", "Cherry Bomb", maxpag, 150, 0, newplantcherry_spr,0)
if control_obj.multijugador==true vscost = 125 else vscost = 150; p[5]=array(6, "niveles", menusnpea_obj, menusnpea1_spr, bloqplant_spr, "Hielaguisantes", "Snow Pea", maxpag, vscost, 0, snowpea_spr,0)

//pag2
maxpag++
if control_obj.multijugador==true vscost = 25 else vscost = 50; p[0+6*maxpag]=array(7, "niveles", garlicdroneslot_obj, garlicdroneslot1_spr, bloqplant_spr, "Dronajo", "Garlic Drone", maxpag, vscost, 0, garlicdrone_spr,0)
if control_obj.multijugador==true vscost = 300 else vscost = 250; p[1+6*maxpag]=array(9, "niveles", menubulb_obj, menubulb1_spr, bloqplant_spr, "Bulbo de Bolera", "Bowling Bulb", maxpag, vscost, 0, bowlbulb_spr,0)
if control_obj.multijugador==true vscost = 150 else vscost = 200; p[2+6*maxpag]=array(12, "niveles", menurepea_obj, menurepea1_spr, bloqplant_spr, "Repetidora", "Repeater", maxpag, vscost, 0, repeater_spr,0)
p[3+6*maxpag]=array(2, "levelhard1", menubirasol_obj, menubirasol1_spr, bloqplant2_spr, "Birasol", "Twin Sunflower", maxpag, 125, 0, birasol1_spr,0)
p[4+6*maxpag]=array(5, "levelhard1", menuexplonut_obj, menuexplonut1_spr, bloqplant2_spr, "Explotonuez", "Explode-O-Nut", maxpag, 200, 0, explodenut1_spr,0)
p[5+6*maxpag]=array(15, "niveles", menupuff_obj, menupuff1_spr, bloqplant_spr, "Seta Desesporada", "Puff-Shroom", maxpag, 0, 1, puffshroom1_spr,0)

//pag3
maxpag++
p[0+6*maxpag]=array(16, "niveles", menusetasolar_obj, menusetasolar1_spr, bloqplant_spr, "Seta Solar", "Sun-Shroom", maxpag, 25, 1, setasolar1_spr,0)
p[1+6*maxpag]=array(17, "niveles", menumiedica_obj, menumiedica1_spr, bloqplant_spr, "Seta Miedica", "Scaredy-Shroom", maxpag, 25, 1, setamiedica1_spr,0)
p[2+6*maxpag]=array(18, "niveles", menugravebuster_obj, menugravebuster1_spr, bloqplant_spr, "Comepiedras", "Grave Buster", maxpag, 50, 1, comepiedras1_spr,0)
p[3+6*maxpag]=array(20, "niveles", menufume_obj, menufume1_spr, bloqplant_spr, "Humoseta", "Fume-Shroom", maxpag, 75, 1, fumeshroom1_spr,0)
p[4+6*maxpag]=array(22, "niveles", menuicelettuce_obj, menuicelettuce1_spr, bloqplant_spr, "Lechuga Iceberg", "Iceberg Lettuce", maxpag, 0, 0, icelettuce1_spr,0)
p[5+6*maxpag]=array(23, "niveles", menupeanut_obj, menupeanut1_spr, bloqplant_spr, "Cacahuate", "Pea-Nut", maxpag, 150, 0, peanut1_spr,0)

//pag4
maxpag++
if control_obj.multijugador==true vscost = 25 else vscost = 50; p[0+6*maxpag]=array(28, "niveles", menucafe_obj, menucafe1_spr, bloqplant_spr, "Grano de Café", "Coffee Bean", maxpag, vscost, 0, cafe1_spr,0)
if control_obj.multijugador==true vscost = 125 else vscost = 75; p[1+6*maxpag]=array(0, "plant0", menusetahielo_obj, menusetahielo1_spr, bloqplant6_spr, "Seta Congelada", "Ice-Shroom", maxpag, vscost, 1, setahielo_spr,0)
p[2+6*maxpag]=array(0, "plant1", menuhealer_obj, menuhealer1_spr, bloqplant6_spr, "Seta Curandera", "Healer-Shroom", maxpag, 125, 1, healershroom1_spr,0)
p[3+6*maxpag]=array(2, "levelhard2", menusetaplasma_obj, menusetaplasma1_spr, bloqplant4_spr, "Seta Plasmática", "Plasma-Shroom", maxpag, 200, 1, setaplasma1_spr,0)
p[4+6*maxpag]=array(5, "levelhard2", menugoldbloom_obj, menugoldbloom1_spr, bloqplant4_spr, "Florecimiento Dorado", "Gold Bloom", maxpag, 0, 0, goldbloom1_spr,0)
p[5+6*maxpag]=array(31, "niveles", lilyslot_obj, lilyslot_spr, bloqplant_spr, "Nenúfar", "Lily Pad", maxpag, 25, 2, nenufar_spr,0)

//pag5
maxpag++
if control_obj.multijugador==true vscost = 50 else vscost = 25; p[0+6*maxpag]=array(33, "niveles", kelpslot_obj, kelpslot_spr, bloqplant_spr, "Zampalga", "Tangle Kelp", maxpag, vscost, 2, tanglekelp_spr,0)
p[1+6*maxpag]=array(35, "niveles", narcisoslot_obj, narcisoslot_spr, bloqplant_spr, "Narciso", "Narcissus", maxpag, 50, 0, narciso1_spr,0)
p[2+6*maxpag]=array(36, "niveles", rotinaboslot_obj, rotinaboslot_spr, bloqplant_spr, "Rotinabo", "Rotobaga", maxpag, 150, 0, rotinabo1_spr,0)
if control_obj.multijugador==true vscost = 275 else vscost = 375; p[3+6*maxpag]=array(38, "niveles", tripitidoraslot_obj, tripitidoraslot_spr, bloqplant_spr, "Tripitidora", "Threepeater", maxpag, vscost, 0, tripitidora_spr,0)
if control_obj.multijugador==true vscost = 50 else vscost = 75; p[4+6*maxpag]=array(40, "niveles", hierbalupaslot_obj, hierbalupaslot_spr, bloqplant_spr, "Hierba Lupa", "Magnifying Grass", maxpag, vscost, 0, hierbalupa1_spr,0)
p[5+6*maxpag]=array(41, "niveles", tallnutslot_obj, tallnutslot_spr, bloqplant_spr, "Nuez Cáscara-rabias", "Tall-Nut", maxpag, 125, 0, tallnut1_spr,0)

//pag6
maxpag++
p[0+6*maxpag]=array(42, "niveles", guacodileslot_obj, guacodileslot_spr, bloqplant_spr, "Guacodrilo", "Guacodile", maxpag, 150, 0, guacodrilo1_spr,0)
p[1+6*maxpag]=array(43, "niveles", melonslot_obj, melonslot_spr, bloqplant_spr, "Sandía seria", "Serious Watermelon", maxpag, 175, 0, melon1_spr,0)
p[2+6*maxpag]=array(46, "niveles", jalapenoslot_obj, jalapenoslot_spr, bloqplant_spr, "Jalapeño", "Jalapeno", maxpag, 125, 0, jalapeno1_spr,0)
p[3+6*maxpag]=array(2, "levelhard3", chomperslot_obj, chomperslot_spr, bloqplant7_spr, "Planta Carnívora", "Chomper", maxpag, 150, 0, chomper1_spr,0)
p[4+6*maxpag]=array(5, "levelhard3", cattailslot_obj, cattailslot_spr, bloqplant7_spr, "Rabo de Gato", "Cattail", maxpag, 300, 0, cattail1_spr,0)
if control_obj.multijugador==true vscost = 75 else vscost = 50; p[5+6*maxpag]=array(0, "plant2", apisonaflorslot_obj, apisonaflorslot_spr, bloqplant6_spr, "Apisonaflor", "Squash", maxpag, vscost, 0, apisonaflor_spr,0)

//pag7
maxpag++
if control_obj.multijugador==true vscost = 225 else vscost = 175; p[0+6*maxpag]=array(0, "plant3", plantorchaslot_obj, plantorchaslot_spr, bloqplant6_spr, "Plantorcha", "Torchwood", maxpag, vscost, 0, plantorcha1_spr,0)
if control_obj.multijugador==true vscost = 150 else vscost = 125; p[1+6*maxpag]=array(52, "niveles", juncoslot_obj, juncoslot_spr, bloqplant_spr, "Junco Eléctrico", "Lightning Reed", maxpag, vscost, 0, junco1_spr,0)
if control_obj.multijugador==true vscost = 75 else vscost = 25; p[2+6*maxpag]=array(53, "niveles", setatoxicaslot_obj, setatoxicaslot_spr, bloqplant_spr, "Seta Tóxica", "Toxic-Shroom", maxpag, vscost, 1, setatoxica_spr,0)
p[3+6*maxpag]=array(55, "niveles", levicottonslot_obj, levicottonslot_spr, bloqplant_spr, "Flotalgodón", "Levicotton", maxpag, 75, 0, levicotton1_spr,0)
p[4+6*maxpag]=array(56, "niveles", planternslot_obj, planternslot_spr, bloqplant_spr, "Planterna", "Plantern", maxpag, 25, 1, plantern_spr,0)
p[5+6*maxpag]=array(57, "niveles", garlicslot_obj, garlicslot_spr, bloqplant_spr, "Ajo", "Garlic", maxpag, 75, 0, garlic1_spr,0)
//pag8
maxpag++
p[0+6*maxpag]=array(59, "niveles", oculartreeslot_obj, oculartreeslot_spr, bloqplant_spr, "Ojo Frondoso", "Oakular", maxpag, 150, 0, oculartree1_spr,0)
p[1+6*maxpag]=array(60, "niveles", electripearslot_obj, electripearslot_spr, bloqplant_spr, "Peraléctrica", "Zapear", maxpag, 100, 0, electripear0_spr,0)
p[2+6*maxpag]=array(63, "niveles", morfosetaslot_obj, morfosetaslot_spr, bloqplant_spr, "Morfoseta", "Morpho-Shroom", maxpag, 125, 1, morfoseta1_spr,0)
p[3+6*maxpag]=array(64, "niveles", bloverslot_obj, bloverslot_spr, bloqplant_spr, "Trebolador", "Blover", maxpag, 75, 0, blover1_spr,0)
p[4+6*maxpag]=array(65, "niveles", magnetslot_obj, magnetslot_spr, bloqplant_spr, "Magnetoseta", "Magnet-Shroom", maxpag, 100, 1, magnet1_spr,0)
p[5+6*maxpag]=array(67, "niveles", ghostpepperslot_obj, ghostpepperslot_spr, bloqplant_spr, "Chile Fantasma", "Ghost Pepper", maxpag, 75, 0, ghostpepper1_spr,0)

//pag9
maxpag++
p[0+6*maxpag]=array(2, "levelhard4", nightshadeslot_obj, nightshadeslot_spr, bloqplant9_spr, "Belladona", "Deadly Nightshade", maxpag, 175, 0, nightshade1_spr,0)
p[1+6*maxpag]=array(5, "levelhard4", petasetaslot_obj, petasetaslot_spr, bloqplant9_spr, "Petaseta", "Doom-Shroom", maxpag, 175, 1, petaseta1_spr,0)
p[2+6*maxpag]=array(0, "plant4", pumpkinslot_obj, pumpkinslot_spr, bloqplant6_spr, "Calabaza", "Pumpkin", maxpag, 125, 1, pumpkin_spr,0)
p[3+6*maxpag]=array(67, "niveles", cabbageslot_obj, cabbageslot_spr, bloqplant_spr, "Coltapulta", "Cabbage Pult", maxpag, 100, 0, cabbage1_spr,0)
p[4+6*maxpag]=array(67, "niveles", kernelslot_obj, kernelslot_spr, bloqplant_spr, "Lanza Maiz", "Kernel Pult", maxpag, 100, 0, idlekernel1_spr,0)
//p[5+6*maxpag]=array(67, "niveles", ghostpepperslot_obj, ghostpepperslot_spr, bloqplant_spr, "Chile Fantasma", "Ghost Pepper", maxpag, 75, 0, ghostpepper1_spr,0)
//p[5+6*maxpag]=array(59, "niveles", oculartreeslot_obj, oculartreeslot_spr, bloqplant_spr, "Oculárbol", "Ocular tree", maxpag, 175, 1, oculartree1_spr,0)
}

if sprite_index!=menuselectplant_spr{//zombies
//pag1
z[0]=array(0, "niveles", zombiebasicslot_obj, basiczombie1_spr, bloqplant_spr, "Zombi", "Zombie", zommaxpag, 25, 0, zombiequieto2_spr,1)
z[1]=array(0, "niveles", zomgravestoneslot_obj, zomgraveslot1_spr, bloqplant_spr, "Tumba Zom", "Zom-Gravestone", zommaxpag, 50, 0, tumbamulti1_spr,1)
z[2]=array(0, "niveles", cajaslot_obj, cajaslot1_spr, bloqplant_spr, "Zombi Carecaja", "Boxhead Zombie", zommaxpag, 50, 0, carecajaquieto_spr,1)
z[3]=array(0, "niveles", papshoslot_obj, papshoslot1_spr, bloqplant_spr, "Zombi Lanzapapel", "Paper Thrower Zombie", zommaxpag, 75, 0, papshoquiet_spr,1)
z[4]=array(0, "niveles", conoslot_obj, conoslot1_spr, bloqplant_spr, "Zombi Carecono", "Conehead Zombie", zommaxpag, 75, 0, conoquiet2_spr,1)
z[5]=array(0, "niveles", flagslot_obj, flagslot1_spr, bloqplant_spr, "Zombi Abanderado", "Flag Zombie", zommaxpag, 300, 0, abanderadoeat_spr,1)
//pag2
zommaxpag++
z[0+6*zommaxpag]=array(0, "niveles", estatuaslot_obj, estatuaslot1_spr, bloqplant2_spr, "Estatua Zombi", "Statue Zombie", zommaxpag, 50, 0, estatua1_spr,1)
z[1+6*zommaxpag]=array(0, "niveles", doorslot_obj, doorslot1_spr, bloqplant_spr, "Zombi Portero", "Screen Door Zombie", zommaxpag, 100, 0, doorquieto1_spr,1)
z[2+6*zommaxpag]=array(0,"niveles", gardenerslot_obj, gardenerslot1_spr, bloqplant_spr, "Zombi Jardinero", "Gardener Zombie", zommaxpag, 100, 0, gardenerquiet1_spr,1)
z[3+6*zommaxpag]=array(0, "niveles", bucketslot_obj, bucketslot1_spr, bloqplant_spr, "Zombi Carecubo", "Buckethead Zombie", zommaxpag, 100, 0, cuboquiet1_spr,1)
z[4+6*zommaxpag]=array(0, "niveles", pertigaslot_obj, pertigaslot1_spr, bloqplant2_spr, "Zombi Saltador de Pértiga", "Pole Vaulter Zombie", zommaxpag, 100, 0, polequiet_spr,1)
z[5+6*zommaxpag]=array(5, "levelhard1", bucketflagslot_obj, bucketflagslot1_spr, bloqplant2_spr, "Zombie Inspirador", "Rally Zombie", zommaxpag, 250, 1, rallyeat1_spr,1)
//pag3
zommaxpag++
z[0+6*zommaxpag]=array(16, "niveles", impslot_obj, impslot1_spr, bloqplant_spr, "Zombidito", "Imp", zommaxpag, 25, 1, imp_spr,1)
z[1+6*zommaxpag]=array(18, "niveles", lectorslot_obj, lectorslot1_spr, bloqplant_spr, "Zombi Lector", "Newspaper Zombie", zommaxpag, 150, 1, lectorquiet_spr,1)
z[2+6*zommaxpag]=array(19, "niveles", zomtorchslot_obj, torchslot1_spr, bloqplant_spr, "Zombi Antorcha", "Torch Zombie", zommaxpag, 125, 1, zomtorch0_spr,1)
z[3+6*zommaxpag]=array(21, "niveles", graveraiserslot_obj, graveraiserslot1_spr, bloqplant_spr, "Zombi Necromante", "Necromancer Zombie", zommaxpag, 200, 1, sectario1quiet_spr,1)
z[4+6*zommaxpag]=array(23,"niveles", skeletonslot_obj, skeletonslot1_spr, bloqplant_spr, "Zombi Esqueleto", "Skeleton Zombie", zommaxpag, 150, 1, skeleton1_spr,1)
z[5+6*zommaxpag]=array(25, "niveles", futbolzombieslot_obj, futbolslot1_spr, bloqplant_spr, "Zombi Futbolista", "Zombie All-Star", zommaxpag, 150, 1, futbolzombi_spr,1)
//pag4
zommaxpag++
z[0+6*zommaxpag]=array(5, "levelhard2", soulgraveslot_obj, soulgraveslot1_spr, bloqplant4_spr, "Tumba de Almas", "Soul Grave", zommaxpag, 50, 1, soulgrave1_spr,1)
z[1+6*zommaxpag]=array(33, "niveles", buzoslot_obj, buzoslot_spr, bloqplant_spr, "Zombie Buzo", "Snorkel Zombie", zommaxpag, 125, 0, buzoidle_spr,1)
z[2+6*zommaxpag]=array(35, "niveles", icezombieslot_obj, icezombieslot_spr, bloqplant_spr, "Zombi Carehielo", "Icehead Zombie", zommaxpag, 75, 0, icezombieidle_spr,1)
z[3+6*zommaxpag]=array(36, "niveles", duckslot_obj, duckslot_spr, bloqplant_spr, "Zombi con Flotador", "Ducky Tube Zombie", zommaxpag, 50, 0, duckyidle_spr,1)
z[4+6*zommaxpag]=array(38, "niveles", trashzombieslot_obj, trashzombieslot_spr, bloqplant_spr, "Zombi Basurero", "Trashcan Zombie", zommaxpag, 150, 0, zombietrashidle_spr,1)
z[5+6*zommaxpag]=array(41,"niveles", rocketzombieslot_obj, rocketzombieslot_spr, bloqplant_spr, "Zombi Cohete", "Rocket Zombie", zommaxpag, 150, 0, rocketidle_spr,1)
//pag5
zommaxpag++

z[0+6*zommaxpag]=array(42, "niveles", zompanelslot_obj, zompanelslot_spr, bloqplant_spr, "Zombi Ingeniero Solar", "Solar Engineer Zombie", zommaxpag, 200, 0, zompanelidle_spr,1)
z[1+6*zommaxpag]=array(44, "niveles", zomgloboslot_obj, zomgloboslot_spr, bloqplant_spr, "Zombi con Globo", "Balloon Zombie", zommaxpag, 200, 0, zombieglobo_spr,1)
z[2+6*zommaxpag]=array(46, "niveles", zombonislot_obj, zombonislot_spr, bloqplant_spr, "Zombictor", "Zomboni", zommaxpag, 250, 0, zomboni1_spr,1)
z[3+6*zommaxpag]=array(47, "niveles", protestanteslot_obj, protestanteslot_spr, bloqplant_spr, "Zombi Manifestante", "Protester Zombie", zommaxpag, 250, 0, protestantidle1_spr,1)
z[4+6*zommaxpag]=array(5, "levelhard3", playaslot_obj, playaslot_spr, bloqplant7_spr, "Pelota de Playa", "Beach Balls", zommaxpag, 100, 0, beachballpreview_spr,1)
z[5+6*zommaxpag]=array(53, "niveles", coffinslot_obj, coffinslot_spr, bloqplant_spr, "Zombi Ataúd", "Coffin Zombie", zommaxpag, 200, 1, coffinzombie0_spr,1)
//pag6
zommaxpag++
z[0+6*zommaxpag]=array(55, "niveles", jackslot_obj, jackslot_spr, bloqplant_spr, "Zombi con Cajita", "Jack-in-the-Box Zombie", zommaxpag, 100, 1, zombicajita0_spr,1)
z[1+6*zommaxpag]=array(57, "niveles", doctorslot_obj, doctorslot_spr, bloqplant_spr, "Zombi Doctor", "Zombie Doctor", zommaxpag, 150, 1, zombidoctor0_spr,1)
z[2+6*zommaxpag]=array(60, "niveles", ghostslot_obj, ghostslot_spr, bloqplant_spr, "Zombi Fantasma", "Ghost Zombie", zommaxpag, 100, 1, ghost1_spr,1)
z[3+6*zommaxpag]=array(62, "niveles", magoslot_obj, magoslot_spr, bloqplant_spr, "Zombi Mago", "Magician Zombie", zommaxpag, 150, 1, magoidle1_spr,1)
z[4+6*zommaxpag]=array(66, "niveles", molotovslot_obj, molotovslot_spr, bloqplant_spr, "Zombi Molotov", "Molotov Zombie", zommaxpag, 150, 1, molotovidle1_spr,1)
z[5+6*zommaxpag]=array(70, "niveles", copslot_obj, copslot_spr, bloqplant_spr, "Zombi Antidisturbios", "Riot Police Zombie", zommaxpag, 175, 1, zomcopidle_spr,1)
//pag7
zommaxpag++
z[0+6*zommaxpag]=array(5, "levelhard4", electricslot_obj, electricslot_spr, bloqplant9_spr, "Rayo Energizante", "Energizing Lightning Bolt", zommaxpag, 200, 1, electrozom_spr,1)}

