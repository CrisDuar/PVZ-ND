if shovel==true{
    with(instance_create(x,y,jumpingtileplant_obj)){
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
}

