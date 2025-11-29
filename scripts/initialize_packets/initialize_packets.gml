function initialize_packets(){
	
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
		PUFFSHROOM
	}
	
	enum zombies_id
	{
		ZOMBIE,
		ZOMBIE_FLAG,
		ZOMBIE_HEADBOX,
		ZOMBIE_PAPERTHROWER,
		ZOMBIE_CONEHEAD,
		ZOMBIE_STATUE,
		ZOMBIE_SCREENDOR,
		ZOMBIE_GARDENER,
		ZOMBIE_BUCKETHEAD,
		ZOMBIE_POLEVAULTER
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
			
			costume: [
				{
					cost: 0,
					timer: 10,
					sprite: marseta1_spr,
					packet_sprite: menupuff2_spr,
					place_type: 2
				}
			]
		}
	]
	
	global.zombies_packets = [
		/*DEFAULT VALUES
		{
			packet_sprite: basiczombie1_spr,

			zombie: zombie1_obj, //zombie object
			sprite: zombie1_spr, //zombie sprite
			cost: 0,
			timer: 1, //Recharge time in seconds
			recargstart: true, //Does it recharge when the level starts?

			vs_cost: 0,
			vs_recharge: 1,
			vs_recargstart: true,
			sd_recharge: true
			
			ignore: false //Does it show up in plant selection? (true for special plants)
		}
		*/
	
		{ //Basic
			packet_sprite: basiczombie1_spr,
			
			sprite: zombie1_spr,
			zombie: z_zombie_obj,
			cost: 25,
			timer: 8,
			
			vs_recargstart: false,
		}
	]
}