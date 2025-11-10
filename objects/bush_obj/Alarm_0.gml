if (global.nivelterminado==false and num_spawn < instance_number(bush_obj)*0.75){
    var _obj= zombispawn_obj.bush_zombies[irandom_range(0,array_length_1d(zombispawn_obj.bush_zombies)-1)]
    
    with(instance_create(x,y, _obj)){
        image_alpha = 0;
    }
    
    with(bush_obj){
        num_spawn++
    }
}

