/// @description set_background_endless()
function set_background_endless() {
	var bgnum;

	if surv_type==1{
	    bgnum = 1
	}else{
	    bgnum = 0
	}

	//day
	if survprogress==0+survtimecalc{
	    __background_set( e__BG.Index, bgnum, bg1 )
	    control_obj.sunday=false
	    control_obj.night=false
	}

	//afternoon
	if survprogress==1+survtimecalc{
	    __background_set( e__BG.Index, bgnum, bg2 )
	    control_obj.sunday=true
	    control_obj.night=false
	}

	//night
	if survprogress==2+survtimecalc{
	    __background_set( e__BG.Index, bgnum, bg3 )
	    control_obj.sunday=false
	    control_obj.night=true
	}

	with(musicglobalhorde_obj){
	    event_perform(ev_create, 0); 
	}



}
