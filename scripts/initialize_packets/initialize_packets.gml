function initialize_packets(){
	
    global.plant_variables = ["in_danger"];
    global.zombie_variables = [];
    
	enum almanac_data
	{
		NAME_ES,
		NAME_EN,
		LEVEL,
		COND,
		UNIT_ID,
		LOCKED_SPR,
		UNIT_SPR,
		BG,
		DESC_EN,
		STATS_EN,
		EXTRA_EN,
		FLAVOR_EN,
		DESC_ES,
		STATS_ES,
		EXTRA_ES,
		FLAVOR_ES
		
	}
	
	enum plants_id
	{
		PEASHOOTER,
		SUNFLOWER,
		POTATOMINE,
		WALLNUT,
		CHERRYBOMB,
		SNOWPEA,
		GARLICDRONE,
		BULB_COMMON,
		BULB_ICE,
		BULB_FIRE,
		BOWLINGBULB,
		REPEATER,
		SINGLECHERRY,
		TWINSUNFLOWER,
		EXPLODEONUT,
		PUFFSHROOM,
		SUNSHROOM,
		SCAREDYSHROOM,
		GRAVEBUSTER,
		FUMESHROOM,
		ICEBERG_LETTUCE,
		PEANUT,
		HEALER_SHROOM,
		PLASMA_SHROOM,
		GOLD_BLOOM,
		ICE_SHROOM,
		SUN_BEAN
	}
	
	enum packet_tags{
		SD_DISABLED,
		VS_NOBAN,
		VS_BANNED
	}
	
	global.plants_packets = [
		/*DEFAULT VALUES
		{
			packet_sprite: menupea1_spr,
			
			xx: 0,
			yy: 20,

			plant: peashooter_obj, //Plant object
			sprite: peashooter_spr, //Plant sprite
			cost: 0,
			timer: 1, //Recharge time
			recargstart: true, //Does it recharge when the level starts?

			vs_cost: 0,
			vs_recharge: 1,
			vs_recargstart: true,
			sd_recharge: true,
			tags: [],
			
			// These two are for the script able_to_plant
			place_type: 0, //To know where can be placed in the able_to_plant script (not used in the seedpacket object)
			wall_heal: false, //To know if it is repairable with wallnut first aid (not used in the seedpacket object)
			
			costume: [
				{
					cost:
				    timer:
				    packet_sprite: 
				    sprite:
				},
				...
			]
			
			ignore: false //Does it show up in plant selection? (true for special plants)
		}
		*/
	
		{ //Peashooter
			packet_sprite: menupea1_spr,
			
			yy: 20,

			plant: peashooter_obj, //Plant object
			sprite: peashooter_spr, //Plant sprite
			cost: 100,
			timer: 7, //Recharge time

			vs_cost: 75,
			vs_recharge: 7,
			vs_recargstart: false,
			
			costume: [
				{
					cost: 150,
				    timer: 13,
				    packet_sprite: menupea2_spr,
				    sprite: peadis1_spr
				},
				{
					cost: 175,
				    timer: 15,
				    packet_sprite: menupea3_spr,
				    sprite: peadispreview2_spr
				}
			]
		},
		{ //Sunflower
			packet_sprite: menusun1_spr,
			
			yy: 30,

			plant: sunflower_obj, //Plant object
			sprite: sunflower_spr, //Plant sprite
			cost: 50,
			timer: 7, //Recharge time
			recargstart: false, //Does it recharge when the level starts?
			
			vs_recargstart: false, //Does it recharge when the level starts?
			
			tags: [packet_tags.SD_DISABLED, packet_tags.VS_NOBAN]
		},
		{ //Potato mine
			packet_sprite: potatomslot1_spr,
			
			yy: 35,

			plant: potatomine_obj, //Plant object
			sprite: potatomine2_spr, //Plant sprite
			cost: 25,
			timer: 30, //Recharge time
			
			vs_recargstart: false
		},
		{ //Wall nut
			packet_sprite: nutslot1_spr,
			
			yy: 35,

			plant: wallnut_obj, //Plant object
			sprite: nut1_spr, //Plant sprite
			cost: 50,
			timer: 40, //Recharge time
			
			sd_recharge: false,
			
			wall_heal: true,
			
			costume: [
				{
					cost: 75,
				    timer: 35,
				    packet_sprite: nutslot2_spr,
				    sprite: nutcosprev_spr
				}
			]
		},
		{ //Cherry bomb
			packet_sprite: cherryslot1_spr,
			
			yy: -10,

			plant: cherry_obj, //Plant object
			sprite: cherry_spr, //Plant sprite
			cost: 150,
			timer: 90, //Recharge time
		},
		{ //Snowpea
			packet_sprite: menusnpea1_spr,
			
			yy: 20,

			plant: snowpea_obj, //Plant object
			sprite: snowpea_spr, //Plant sprite
			cost: 150,
			timer: 7, //Recharge time
			
			vs_cost: 125,
			
			costume: [
				{
					cost: 325,
					timer: 20,
					sprite: snowpea2_spr,
					packet_sprite: menusnpea2_spr
				}
			]
		},
		{ //Garlic drone
			packet_sprite: garlicdroneslot1_spr,
			
			xx: 7,
			yy: -10,

			plant: garlicdrone_obj, //Plant object
			sprite: garlicfly1_spr, //Plant sprite
			cost: 50,
			timer: 14, //Recharge time
			
			vs_cost: 25,
			vs_recargstart: true,
			
			place_type: 1,
			
			costume: [
				{
					cost: 150,
					timer: 21,
					sprite: garlicdsfly_spr,
					packet_sprite: garlicdroneslot2_spr
				}
			]
		},
		{// common bulb FOR BOWLING BULB MINIGAME
			packet_sprite: menubulb1_spr,
			
			yy: 20,

			plant: bulbatck_obj, //Plant object
			sprite: bowlbulb_spr, //Plant sprite
			cost: 75,
			timer: 14, //Recharge time
			
			ignore: true
		},
		{ //Ice bulb FOR BOWLING BULB MINIGAME
			packet_sprite: menuicebulb1_spr,
			
			yy: 20,

			plant: icebulb_obj, //Plant object
			sprite: bowicebulb_spr, //Plant sprite
			cost: 100,
			timer: 14, //Recharge time
			
			ignore: true
		},
		{ //Explosive bulb FOR BOWLING BULB MINIGAME
			packet_sprite: menufirebulb1_spr,
			
			yy: 20,

			plant: bulbfire1_obj, //Plant object
			sprite: bowfirebulb_spr, //Plant sprite
			cost: 125,
			timer: 90, //Recharge time
			
			ignore: true
		},
		{ //Bowling bulb
			packet_sprite: menubulb1_spr,
			
			yy: 20,

			plant: bowlingbulb_obj, //Plant object
			sprite: bowlbulb_spr, //Plant sprite
			cost: 250,
			timer: 35, //Recharge time
			
			vs_cost: 300
		},
		{ //Repeater
			packet_sprite: menurepea1_spr,
			
			yy: 20,

			plant: Repeater_obj, //Plant object
			sprite: repeater_spr, //Plant sprite
			cost: 200,
			timer: 10, //Recharge time
			
			vs_cost: 150,
			
			costume: [
				{
					cost: 250,
					timer: 25,
					sprite: repeadis1_spr,
					packet_sprite: menurepea2_spr
				}
			]
		},
		{ //Single Cherry bomb
			packet_sprite: menusingcherry1_spr,
			
			yy: -10,

			plant: singlecherry_obj, //Plant object
			sprite: singlecherry1_spr, //Plant sprite
			cost: 75,
			timer: 30, //Recharge time
			
			ignore: true
		},
		{ //Twin sunflower
			packet_sprite: menubirasol1_spr,
			
			yy: 30,

			plant: birasol_obj, //Plant object
			sprite: birasol1_spr, //Plant sprite
			cost: 125,
			timer: 10, //Recharge time
			recargstart: false //Does it recharge when the level starts?
			
		},
		{ //Explode o nut
			packet_sprite: menuexplonut1_spr,
			
			yy: 30,

			plant: explodenut_obj, //Plant object
			sprite: explodenut1_spr, //Plant sprite
			cost: 150,
			timer: 60 //Recharge time
		},
		{ //Puff shroom
			packet_sprite: menupuff1_spr,
			
			yy: 30,

			plant: puffshroom_obj, //Plant object
			sprite: puffshroom1_spr, //Plant sprite
			cost: 0,
			timer: 7, //Recharge time
			
			recargstart: false, //Does it recharge when the level starts?
			sd_recharge: false,
			tags: [packet_tags.SD_DISABLED],
			
			costume: [
				{
					cost: 0,
					timer: 10,
					sprite: marseta1_spr,
					packet_sprite: menupuff2_spr,
					place_type: 2
				}
			]
		},
		{ //Sun-Shroom
			packet_sprite: menusetasolar1_spr,
			
			yy: 30,

			plant: setasolar_obj, //Plant object
			sprite: setasolar1_spr, //Plant sprite
			cost: 25,
			timer: 5, //Recharge time
			recargstart: false,
			vs_recargstart: false //Does it recharge when the level starts?
		},
		{ //Scaredy-Shroom
			packet_sprite: menumiedica1_spr,
			
			yy: 30,

			plant: setamiedica_obj, //Plant object
			sprite: setamiedica1_spr, //Plant sprite
			cost: 25,
			timer: 5, //Recharge time
		},
		{ //Grave buster
			packet_sprite: menugravebuster1_spr,
			
			yy: 30,

			plant: gravebuster_obj, //Plant object
			sprite: comepiedras1_spr, //Plant sprite
			cost: 50,
			timer: 20, //Recharge time
            place_type: 4,
			tags: [packet_tags.SD_DISABLED],
            
			
			costume: [
				{
					cost: 25,
					timer: 30,
					sprite: comepiedras0_spr,
					packet_sprite: menugravebuster2_spr
				}
			]
		},
		{ //Fume-Shroom
			packet_sprite: menufume1_spr,
			
			yy: 30,

			plant: fumeshroom_obj, //Plant object
			sprite: fumeshroom1_spr, //Plant sprite
			cost: 75,
			timer: 7 //Recharge time
		},
		{ //Iceberg Lettuce
			packet_sprite: menuicelettuce1_spr,
			
			yy: 35,

			plant: icelettuce_obj, //Plant object
			sprite: icelettuce1_spr, //Plant sprite
			cost: 0,
			timer: 30, //Recharge time
			vs_recargstart: false, //Does it recharge when the level starts?
			sd_recharge: false
		},
		{ //Peanut
			packet_sprite: menupeanut1_spr,
			
			yy: 30,

			plant: peanut_obj, //Plant object
			sprite: peanut1_spr, //Plant sprite
			cost: 150,
			timer: 25, //Recharge time
			sd_recharge: false
		},
		{ //Healer Shroom
			packet_sprite: menuhealer1_spr,
			
			yy: 25,

			plant: healershroom_obj, //Plant object
			sprite: healershroom1_spr, //Plant sprite
			cost: 100,
			timer: 20 //Recharge time
		},
		{ //Plasma Shroom
			packet_sprite: menusetaplasma1_spr,
			
			yy: 27,

			plant: setaplasma_obj, //Plant object
			sprite: setaplasma1_spr, //Plant sprite
			cost: 200,
			timer: 30 //Recharge time
		},
		{ //Gold Bloom
			packet_sprite: menugoldbloom1_spr,
			
			yy: 30,

			plant: goldbloom_obj, //Plant object
			sprite: goldbloom1_spr, //Plant sprite
			cost: 0,
			timer: 90, //Recharge time
			
			recargstart: true,
			tags: [packet_tags.VS_BANNED]
		},
		{ //Ice-Shroom
			packet_sprite: menusetahielo1_spr,
			
			yy: 30,

			plant: setahielo_obj, //Plant object
			sprite: setahielo_spr, //Plant sprite
			cost: 75,
			timer: 60, //Recharge time
			
			vs_cost: 125
		},
		{ //Sun Bean
			packet_sprite: sunbeanslot_spr,
			
			yy: 30,

			plant: sunbean_obj, //Plant object
			sprite: sunbean_spr, //Plant sprite
			cost: 0,
			timer: 30 //Recharge time
		}
		
	]
	
	enum zombies_id
	{
		OBST_ZOMGRAVE,
		ZOMBIE,
		ZOMBIE_FLAG,
		ZOMBIE_HEADBOX,
		ZOMBIE_PAPERTHROWER,
		ZOMBIE_CONEHEAD,
		ZOMBIE_STATUE,
		ZOMBIE_SCREENDOOR,
		ZOMBIE_GARDENER,
		ZOMBIE_BUCKETHEAD,
		ZOMBIE_POLEVAULTER,
		ZOMBIE_RALLY,
        ZOMBIE_IMP,
        ZOMBIE_NEWSPAPER,
        ZOMBIE_TORCH,
        ZOMBIE_NECROMANCER,
        ZOMBIE_SKELETON,
        ZOMBIE_ALLSTAR,
        BOSS_SKELETARIUS,
        OBST_GRAVE,
        OBST_GRAVE_ZOMBIE,
        OBST_GRAVE_SUN,
        OBST_GRAVE_SHIELD,
        OBST_GRAVE_EXPLOSION,
        OBST_GRAVE_SOUL,
	}
	
	global.zombies_packets = [
		/*DEFAULT VALUES
		{
			xx: 0,
			yy: 0,
			
			packet_sprite: basiczombie1_spr,

			zombie: zombie1_obj, //zombie object
			sprite: zombie1_spr, //zombie sprite
			cost: 0,
			timer: 1, //Recharge time in seconds
			recargstart: true, //Does it recharge when the level starts?
			
			tags: [],

			vs_cost: 0,
			vs_recharge: 1,
			vs_recargstart: true,
			sd_recharge: true
			
			ignore: false //Does it show up in plant selection? (true for special plants)
		}
		*/
		{ //Zom-gravestone
			xx: -10,
			yy: 30,
			
			packet_sprite: zomgraveslot1_spr,
			
			sprite: tumbamulti1_spr,
			zombie: zomgrave_obj,
			cost: 50,
			timer: 7,
			
			recargstart: false,
			
			tags: [packet_tags.SD_DISABLED, packet_tags.VS_NOBAN]
		},
		{ //Basic
			packet_sprite: basiczombie1_spr,
			
			sprite: zombie1_spr,
			zombie: z_zombie_obj,
			cost: 25,
			timer: 8,
			
			vs_recargstart: false
		},
		{ //Flag
			packet_sprite: flagslot1_spr,
			
			sprite: abanderado_spr,
			zombie: z_flag_obj,
			cost: 300,
			timer: 90
		},
		{ //Boxhead
			packet_sprite: cajaslot1_spr,
			
			sprite: carecajaquieto_spr,
			zombie: z_headbox_obj,
			cost: 50,
			timer: 15
		},
		{ //paper thrower
			packet_sprite: papshoslot1_spr,
			
			sprite: papsho1_spr,
			zombie: z_paperthrower_obj,
			cost: 75,
			timer: 30
		},
		{ //Conehead
			packet_sprite: conoslot1_spr,
			
			sprite: conoquiet1_spr,
			zombie: z_conehead_obj,
			cost: 75,
			timer: 15
		},
		{ //statue
			packet_sprite: estatuaslot1_spr,
			
			sprite: estatua1_spr,
			zombie: z_statue_obj,
			cost: 50,
			timer: 40,
			
			sd_recharge: false
		},
		{ //screendoor
			packet_sprite: doorslot1_spr,
			
			sprite: zombiedoor1_spr,
			zombie: z_screendoor_obj,
			cost: 100,
			timer: 30
		},
		{ //gardener
			packet_sprite: gardenerslot1_spr,
			
			sprite: gardenerquiet1_spr,
			zombie: z_gardener_obj,
			cost: 75,
			timer: 15
		},
		{ //buckethead
			packet_sprite: bucketslot1_spr,
			
			sprite: cuboquiet1_spr,
			zombie: z_buckethead_obj,
			cost: 100,
			timer: 30
		},
		{ //pole vaulter
			packet_sprite: pertigaslot1_spr,
			
			sprite: polequiet_spr,
			zombie: z_polevaulter_obj,
			cost: 100,
			timer: 30
		},
		{ //rally
			packet_sprite: bucketflagslot1_spr,
			
			sprite: rallyeat1_spr,
			zombie: z_rally_obj,
			cost: 200,
			timer: 60
		},
		{ //imp
			packet_sprite: impslot1_spr,
			
			sprite: imp1_spr,
			zombie: z_imp_obj,
			cost: 25,
			timer: 10
		},
		{ //newspaper
			packet_sprite: lectorslot1_spr,
			
			sprite: lectorquiet_spr,
			zombie: z_newspaper_obj,
			cost: 150,
			timer: 20
		},
		{ //torch
			packet_sprite: torchslot1_spr,
			
			sprite: zomtorch0_spr,
			zombie: z_torch_obj,
			cost: 125,
			timer: 30
		},
		{ //necromancer
			packet_sprite: graveraiserslot1_spr,
			
			sprite: sectario1quiet_spr,
			zombie: z_necromancer_obj,
			cost: 200,
			timer: 20
		},
		{ //skeleton
			packet_sprite: skeletonslot1_spr,
			
			sprite: skeleton1_spr,
			zombie: z_skeleton_obj,
			cost: 150,
			timer: 20
		},
		{ //allstar
			packet_sprite: futbolslot1_spr,
			
			sprite: futbolzombi_spr,
			zombie: z_allstar_oj,
			cost: 150,
			timer: 45
		},
		{ //boss 1
			packet_sprite: boss1slot_spr,
			
			sprite: necromancer1_spr,
			zombie: boss1_obj,
			cost: 800,
			timer: 99999999,
            ignore: true
		},
		{ //grave
            xx: -10,
			yy: 30,
			packet_sprite: grave1slot_spr,
			
			sprite: grave3_spr,
			zombie: grave3_obj,
			cost: 25,
			timer: 30,
            ignore: true
        },
		{ //grave zombie
            xx: -10,
			yy: 30,
			packet_sprite: grave2slot_spr,
			
			sprite: grave1_spr,
			zombie: grave1_obj,
			cost: 50,
			timer: 30,
            ignore: true
		},
		{ //grave sun
            xx: -10,
			yy: 30,
			packet_sprite: grave3slot_spr,
			
			sprite: grave2_spr,
			zombie: grave2_obj,
			cost: 0,
			timer: 30,
            ignore: true
		},
		{ //grave shield
            xx: -10,
			yy: 30,
			packet_sprite: grave4slot_spr,
			
			sprite: grave4_spr,
			zombie: grave4_obj,
			cost: 200,
			timer: 30,
            ignore: true
		},
		{ //grave explosion
            xx: -10,
			yy: 30,
			packet_sprite: grave5slot_spr,
			
			sprite: grave5_spr,
			zombie: grave6_obj,
			cost: 50,
			timer: 60,
            ignore: true
		},
		{ //grave soul
            xx: -10,
			yy: 30,
			packet_sprite: soulgraveslot1_spr,
			
			sprite: soulgrave1_spr,
			zombie: soulgrave_obj,
			cost: 50,
			timer: 30
		}
		
		
	]
}

function initialize_shop(){
	
	global.shopItems = [
		{//Ice-Shroom
			spr: global.plants_packets[plants_id.ICE_SHROOM].sprite,
			
			name_en:"Ice-Shroom",
			name_es:"Seta congelada",
			key: "plant0",
			cond: "NO_COND",
			cost: 5000,
			desc_en: "Ice-Shroom freezes all zombies on the screen.",
			desc_es: "Seta congelada congela a todos los zombis de la pantalla.",
			
			lock_msg: 0
		}
	]
}