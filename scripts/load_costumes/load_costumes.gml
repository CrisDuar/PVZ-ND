function load_costumes() {
	for (var i = 0; i<ds_grid_height(global.costumes); i++){
	    global.costumes[# 2, i] = global.costumelist[i]
	    var _con = global.costumes[# 2, i]
    
	    global.costumes[# 1, i]=global.costumes[# _con+3, i]
	}
	/*
	with(globalselect_obj){
	    if packet==global.plant{
	        update_info(global.plant)
	    }
	}

	with(selectanim_obj){
	    set_costume_sprites();
	}

	/*global.peashooter_dis=global.costumelist[0]
	global.garlicdrone_dis=global.costumelist[1]
	global.repeater_dis=global.costumelist[2]
	global.wallnut_dis=global.costumelist[3]
	global.gravebuster_dis=global.costumelist[4]
	global.jalapeno_dis=global.costumelist[5]
	global.puffshroom_dis=global.costumelist[6]


/* end load_costumes */
}
