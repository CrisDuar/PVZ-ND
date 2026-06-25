function initialize_tile_objs(){
	
	enum tileobj_id{
		
		CRATER,
		SOLAR_PANEL,
		GRAVESTONE_SPAWNER,
        GRAVESTONE_VS,
		GRAVESTONE,
		GRAVESTONE_ZOMBIE,
		GRAVESTONE_SUN,
		GRAVESTONE_SHIELD,
		GRAVESTONE_EXPLOSION,
		GRAVESTONE_MINIGAME,
        GRAVESTONE_SOUL,
        DR_HEALS
	}
	
	global.tile_objects = [
		// Crater
		{
			object: crater1_obj,
			
			xx: 0,
			yy: 30,
			
			vars: ["dis", "tmax"],
		},
        //Solar panel
        {
            object: sunmachine_obj,
            
            xx: 0,
            yy: 20,
            
            vars: []
        },
        //Gravestone spawner
        {
            object: spawngraves_par_obj,
            
            xx: 0,
            yy: 20,
            
            vars: ["type"]
        },
        //Gravestone versus
        {
            object: zomgrave_obj,
            
            xx: 0,
            yy: 20,
            
            vars: []
        },
        //Gravestone
        {
            object: grave3_obj,
            
            xx: 0,
            yy: 20,
            
            vars: []
        },
        //Gravestone zombie
        {
            object: grave1_obj,
            
            xx: 0,
            yy: 20,
            
            vars: []
        },
        //Gravestone sun
        {
            object: grave2_obj,
            
            xx: 0,
            yy: 20,
            
            vars: []
        },
        //Gravestone shield
        {
            object: grave4_obj,
            
            xx: 0,
            yy: 20,
            
            vars: []
        },
        //Gravestone explosion
        {
            object: grave6_obj,
            
            xx: 0,
            yy: 20,
            
            vars: []
        },
        //Gravestone minigame
        {
            object: grave5_obj,
            
            xx: 0,
            yy: 20,
            
            vars: []
        },
        //Gravestone soul
        {
            object: soulgrave_obj,
            
            xx: 0,
            yy: 20,
            
            vars: []
        },
        //dr heals
        {
            object: drheals_obj,
            
            xx: 0,
            yy: 20,
            
            vars: []
        }
        
	]
}