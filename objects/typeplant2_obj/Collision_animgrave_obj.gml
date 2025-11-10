with(instance_create(x,y,jumpingplant_obj)){
    sprite_index=other.sprite_index
    image_index=other.image_index
    image_blend=other.image_blend
    image_xscale = other.image_xscale*other.xmod
    
    _timefreeze=other.timefreeze
    _aquatic=other.aquatic
    _obj=other.id
    _tile_plant=other.tile_plant
    
    _tileyy=other.tileyy
    _tilexx=other.tilexx
    _costume_img = other.costume_img
}
/*audio_play_sound(choose(pea_impact_snd,pea_impact2_snd),0.5,false)
instance_destroy();
*/
/*with(instance_create(x,y,jumpingplant_obj)){
    sprite_index=other.sprite_index
    image_index=other.image_index
    
    _obj=other.object_index
    
    _vida=other.vida
    _plant_cost=other.plant_cost
    _poison=other.poison
    _sleep=other.sleep
    _timefreeze=other.timefreeze
    _aquatic=other.aquatic
    
    _tileyy=other.tileyy
    _tilexx=other.tilexx

}
instance_destroy();

//if distance_to_object(nenufar_obj)>10{
    with(instance_create(x,y,jumpingplant_obj)){
        sprite_index=other.sprite_index
        image_index=other.image_index
        image_blend=other.image_blend
        _timefreeze=other.timefreeze
        _aquatic=other.aquatic
        _obj=other.id
        _tile_plant=other.tile_plant
        
        _tileyy=other.tileyy
        _tilexx=other.tilexx
    }
    /*
    
    
    _vida=other.vida
    _plant_cost=other.plant_cost
    _poison=other.poison
    _sleep=other.sleep
    _timefreeze=other.timefreeze
    _aquatic=other.aquatic
    
    _tileyy=other.tileyy
    _tilexx=other.tilexx*/

//}



/* */
/*  */
