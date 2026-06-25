event_inherited();

if vida<=0{
    
    with(create_packet_ingame(x, y - 5, 0, plantPool[irandom_range(0, array_length(plantPool) - 1)], -1)){
        
        type = 2;
        image_xscale=0.7
        image_yscale=0.7
    }
}
