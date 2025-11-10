function update_challenges() {
	//save our seeds
	if challenges[0,0] and challenges[0,1]{
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
	    if surv_type==1{
	        instance_create(406,152,sunmachine_obj)
	    }else{
	        instance_create(418,368,sunmachine_obj)
	    }
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
	}
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
