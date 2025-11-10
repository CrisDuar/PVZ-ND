function set_difficulty_changes() {
	dificultad = min(dificultad, 25)

	control_obj.soles = min(50 + (25*floor(survprogress/3)), 500)
	control_obj.drawsoles = control_obj.soles

	numwaves = min(floor(15 + dificultad), 40)

	if dificultad>=0 and dificultad<3{  
	    flag=false
	    flagnum=0
	    pt=20
	    diff_incr = 0.75
    
	    spawngraves_par_obj.maxgraves=4;
	    spawngraves_par_obj.graves=0;
	}

	if dificultad>=3 and dificultad<6{  
	    flag=false
	    pt=18
	    flagnum=1
	    diff_incr = 0.75

	    spawngraves_par_obj.maxgraves=6;
	    spawngraves_par_obj.graves=0;
	}

	if dificultad>=6 and dificultad<12{
	    flag=false
	    flagnum=2
	    pt=15
	    diff_incr = 0.5

	    //tumbas
	    spawngraves_par_obj.maxgraves=6;
	    spawngraves_par_obj.graves=0;
	}

	if dificultad>=12 and dificultad<15{
	    //bandera
	    flagnum=3
	    flag=false
	    pt=15
	    diff_incr = 0.25
    
	    //tumbas
	    spawngraves_par_obj.maxgraves=13;
	    spawngraves_par_obj.graves=0;
	}

	if dificultad>=15 and dificultad<21{
	    //bandera
	    flagnum=3
	    flag=true
	    pt=12
	    diff_incr = 0.25
    
	    //tumbas
	    spawngraves_par_obj.maxgraves=18;
	    spawngraves_par_obj.graves=0;
	}

	if dificultad>=21{
	    //bandera
	    flagnum=4
	    flag=true
	    pt=10
	    diff_incr = 0.125
    
	    //tumbas
	    spawngraves_par_obj.maxgraves=24;
	    spawngraves_par_obj.graves=0;
	}

	if survprogress!=2+survtimecalc and dificultad<15{
	    spawngraves_par_obj.maxgraves=0;
	    spawngraves_par_obj.graves=0;
	}



}
