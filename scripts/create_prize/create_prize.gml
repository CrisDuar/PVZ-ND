function create_prize(_x, _y){
	
	with(instance_create_depth(_x, _y, -9900, newprize_obj)){
	    sprite_index=other.sprite;
	    plantroom=other.plantroom;
	    lvl=other.lvl;
	    prizevar=other.prizevar;
	    snd=other.snd
	    money=other.money
		update_progress = other.update_progress
    }
}