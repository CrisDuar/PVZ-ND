if instance_exists(obj_sec) instance_destroy(obj_sec);
if instance_exists(obj_tileplant) instance_destroy(obj_tileplant);
//if instance_exists(obj_tileplant2) instance_destroy(obj_tileplant2);

var proceed = true
var n=0
with(tile){
    proceed = tile_free();
}
while(!instance_exists(_obj) and n<10){
    instance_activate_object(_obj)
    n++
}

if instance_exists(_obj){
    _obj.x=x3
    _obj.y=y3
}

if proceed==false or !instance_exists(_obj){
    instance_create(x,y,gravedestroy_obj)
    instance_destroy(_obj);
    /*
    with(instance_create(x,y,jumpingplant_obj)){
        sprite_index=other.sprite_index
        image_index=other.image_index
        image_blend=other.image_blend
        _timefreeze=other._timefreeze
        _aquatic=other._aquatic
        _obj=other._obj
        _tile_plant=other._tile_plant
        
        _tileyy=other._tileyy
        _tilexx=other._tilexx
        
        //c = other.c+1
    }*/
}
tile.canplant=true
instance_destroy();

/* */
/*  */
