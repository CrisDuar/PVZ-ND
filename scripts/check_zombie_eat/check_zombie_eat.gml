/// @description check_zombie_eat(object)
/// @param object
function check_zombie_eat() {
	var obj = argument[0]
	var x1=-10*image_xscale
	var x2=-50*image_xscale
	var yy=-15

	if collision_rectangle(x+x1,y+yy-30,x+x2,y+yy+10,obj,false,true){
	    return true;
	}else{
	    return false;
	}



}
