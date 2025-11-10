event_inherited();

if instance_exists(tile){
    x3=tile.x+_tilexx
    y3=tile.y+_tileyy
}  

//Esto es para desactivar la planta tile una vez haya terminado la búsqueda
if instance_exists(_obj) and t<1 and search==true/* and distance_to_object(typeplant_obj)<10*/{
    _obj.x=x3
    _obj.y=y3
    instance_deactivate_object(_obj)
}


/* */
/*  */
