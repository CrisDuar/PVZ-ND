function update_discord_status() {
	if (global.canupdate_dc){
	    switch (room){
	        case menu_rm_:
	            global.real_state_dc = "On game menu"
	        break
        
	        case vase_sl_rm:
	            global.real_state_dc = "Playing Vasebreaker"
	        break
        
	        case level1_sl_rm_:
	            global.real_state_dc = "Playing Day levels"
	        break
        
	        case level2_sl_rm:
	            global.real_state_dc = "Playing Night levels"
	        break
        
	        case level3_sl_rm:
	            global.real_state_dc = "Playing Pool levels"
	        break
        
	        case level4_sl_rm:
	            global.real_state_dc = "Playing Weather levels"
	        break
        
	        case hardmode_day_rm:
	            global.real_state_dc = "Playing Hard mode (Sunset)"
	        break
        
	        case hardmode_night_rm:
	            global.real_state_dc = "Playing Hard mode (Night)"
	        break
        
	        case hardmode_pool_rm:
	            global.real_state_dc = "Playing Hard mode (Pool at night)"
	        break
        
	        case hardmode_claire_rm:
	            global.real_state_dc = "Playing Hard mode (Weather)"
	        break
        
	        case morewaysplay_rm:
	            global.real_state_dc = "Selecting game mode"
	        break
        
	        case configvs_rm:
	            global.real_state_dc = "Configuring Versus mode"
	        break
        
	        case multiplayer1_rm:
	            global.real_state_dc = "Playing Versus mode"
	        break
        
	        case configsurv_rm:
	            global.real_state_dc = "Selecting Endless survival"
	        break
        
	        case survival1_rm:
	            global.real_state_dc = "Playing Endless (Player's house)"
	        break
        
	        case survival2_rm:
	            global.real_state_dc = "Playing Endless (Robert's house)"
	        break
        
	        case survival3_rm:
	            global.real_state_dc = "Playing Endless (Claire's house)"
	        break
        
	        case testroom_rm:
	            global.real_state_dc = "Testing stuff"
	        break
        
	        case shop_rm:
	            global.real_state_dc = "Buying stuff"
	        break
        
	        case izombie_rm:
	            global.real_state_dc = "Playing battles as zombie"
	        break
        
	        case iplant_rm:
	            global.real_state_dc = "Playing battles as plant"
	        break
        
	        case credits_rm:
	            global.real_state_dc = "Watching the credits"
	        break
        
	        case almanacindex_rm:
	            global.real_state_dc = "Reading the almanac"
	        break
        
	        case logros_rm:
	            global.real_state_dc = "Checking the achievements"
	        break
	    }
    
	    global.gamestate = global.real_state_dc
	}else{
	    if (global.temp_state_dc != noone){
	        global.gamestate = global.temp_state_dc
        
	        global.temp_state_dc = noone
	    }
    
	    global.canupdate_dc = true
	}

	np_setpresence(global.details, global.real_state_dc, "icon", "")




}
