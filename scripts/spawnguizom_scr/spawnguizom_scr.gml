/// @description spawnguizom_scr(if mult==true then 326 else 0)
/// @param if mult==true then 326 else 0
function spawnguizom_scr(argument0) {
	var mult_xx = argument0
	var n = 0;

	repeat(zommaxpag+1){
	    for (var j=0; j<3;j++){
	        for (var i=0; i<2;i++){
	            if n>=array_length(z){break}
	            with(instance_create_layer(((x-75)+142*i)+5,(y+78*j)+36, "GUI",globalselect_obj)){
	                x += mult_xx
	                create_packet(other.z[n], global.zombies_packets);
	                n++
	            }
	        }
	    }
	}



}
