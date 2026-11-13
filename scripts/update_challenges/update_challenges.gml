function execute_challege(_challege_id, _function){
    
    show_debug_message("IS CHALLENGE " + string(_challege_id) + " AVAILABLE")
    show_debug_message(challenges[_challege_id][1])
    
    if (challenges[_challege_id][0] && challenges[_challege_id][1]){
        
        _function();
        
        challenges[_challege_id][0] = false
    }
}



function update_challenges() {
	//save our seeds
    
    //show_debug_message("CHALLENGES LEN")
    //show_debug_message(string(array_length(challenges)))
    
    execute_challege(0, function(){
        var _plants = [
            {
                obj_type: 0,
                obj_id: p1,
            
                pos: [
                    {x: 1, y: 0}
                ],

                vars: [true]
            },
            {
            
                obj_type: 0,
                obj_id: p2,
            
                pos: [
                    {x: 1, y: array_length(rows_arr) - 1}
                ],

                vars: [true]
            }
        ]
		show_debug_message("ENDANGERED PLANTS")
        load_objects_id_struct(_plants);
    })
    
    execute_challege(1, function(){
        show_debug_message("SUN MACHINE")
        control_obj.cansun=false
        var _row = 2;
        
	    if (surv_type==1) _row = 1;
        
        var _plants = [
            {
                obj_type: 1,
                obj_id: 1,
            
                pos: [
                    {x: 1, y: _row}
                ],

                vars: []
            }
        ]
		
        load_objects_id_struct(_plants);
    })
    
    execute_challege(2, function(){
        show_debug_message("LIMITED LAWN")
        control_obj.limit = 806;
    })
    
    execute_challege(3, function(){
        control_obj.rain = true;
    })
    
    execute_challege(4, function(){
        instance_create_layer(0,0, "Control", fogctrl_obj);
    })
    
    execute_challege(5, function(){
        control_obj.windy = true
    })
    
    execute_challege(6, function(){
        
        //TODO: Poison puddles
    })
    
    execute_challege(7, function(){
        instance_create_layer(0,0, "Control", pollutionctrl_obj);
	    instance_destroy(fogctrl_obj);
    })
    /*
	if challenges[0,0] and challenges[0,1]{
        
        
        var _plants = [
            {
                obj_type: p1,
                obj_id: 0,
            
                pos: [
                    {x: 1, y: 0}
                ],

                vars: [true]
            },
            {
            
                obj_type: p2,
                obj_id: 0,
            
                pos: [
                    {x: 1, y: array_length(rows_arr) - 1}
                ],

                vars: [true]
            }
        ]
		
        load_objects_id_struct(_plants);
        
        /*
        
        
	    if surv_type==1{
	        with(instance_create(406,232,p1)){in_danger=true}
	        with(instance_create(406,525,p2)){in_danger=true}
	    }else{
	        with(instance_create(416,160,p1)){in_danger=true}
	        with(instance_create(416,576,p2)){in_danger=true}
	    }
    
	    challenges[0,0] = false
	}

	//sun machine
	if challenges[1,0] and challenges[1,1]{
	    control_obj.cansun=false
        var _row = 2;
        
	    if surv_type==1{
            _row = 1;
	        //instance_create(406,152,sunmachine_obj)
	    }else{
	        //instance_create(418,368,sunmachine_obj)
	    }
        
        var _plants = [
            {
                obj_type: 1,
                obj_id: 1,
            
                pos: [
                    {x: 1, y: _row}
                ],

                vars: []
            }
        ]
		
        load_objects_id_struct(_plants);
        
	    challenges[1,0] = false
	}

	//limited lawn
	if challenges[2,0] and challenges[2,1]{
	    trazo_obj.x = 806
	    challenges[2,0] = false
	}

	//rain
	if challenges[3,0] and challenges[3,1]{
	    control_obj.rain=true
	    challenges[3,0] = false
	}

	//fog
	if challenges[4,0] and challenges[4,1]{
	    instance_create(0,0, fogctrl_obj)
	    challenges[4,0] = false
	}

	//wind
	if challenges[5,0] and challenges[5,1]{
	    control_obj.windy = true
	    challenges[5,0] = false
	}

	//poison puddles
	if challenges[6,0] and challenges[6,1]{
	    instance_create(682,256,poisontile_obj)
	    instance_create(682,456,poisontile_obj)

	    challenges[6,0] = false
	}


	//pollution
	if challenges[7,0] and challenges[7,1]{
	    instance_create(0,0, pollutionctrl_obj)
	    if instance_exists(fogctrl_obj) instance_destroy(fogctrl_obj);
	    challenges[7,0] = false
	}*/
	/*
	if challenges[0]{
	if saveourseeds==true{
	        saveourseeds=false
	        instance_create(416,160,p1)
	        instance_create(416,576,p2)
	    }
	}

	if sunmachine==true{control_obj.cansun=false; instance_create(418,368,sunmachine_obj); sunmachine=false}
	if limitlawn==true {with(trazo_obj){x=806};  limitlawn=false}


/* end update_challenges */
}
