if done==true{
    if spawntarget==false{
		
		create_packet_ingame(x2 + xz*type, y, type, seed, costume - 1);
		
        spawntarget=true
    }else{
        vspeed -= 0.5
        if vspeed < -40{instance_destroy();}
    }
}

