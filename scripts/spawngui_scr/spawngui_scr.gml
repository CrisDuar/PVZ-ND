function spawngui_scr() {
	var n = 0;

	repeat(maxpag+1){
	    for (var j=0; j<3;j++){
	        for (var i=0; i<2;i++){
	            if n>=array_length(p){
	                break
	            }
	            with(instance_create_layer(((x-75)+142*i)+5,(y+78*j)+36,"GUI",globalselect_obj)){
	                create_packet(other.p[n]);
	                n++
	            }
	        }
	    }
	}



}
