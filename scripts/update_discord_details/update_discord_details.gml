function update_discord_details() {
	switch (room){
	    case survival1_rm:
	        if instance_exists(zombiespawnsurv_obj){
	            global.details = "Flags: " + string(zombiespawnsurv_obj.survprogress)
	        }else{
	            global.details = "Version: " + string(GM_version)
	        }
	    break
    
	    case survival2_rm:
	        if instance_exists(zombiespawnsurv2_obj){
	            global.details = "Flags: " + string(zombiespawnsurv2_obj.survprogress)
	        }else{
	            global.details = "Version: " + string(GM_version)
	        }
	    break
    
	    default:
	        global.details = "Version: " + string(GM_version)
	    break
	}

	np_setpresence(global.details, global.gamestate, "icon", "")



}
