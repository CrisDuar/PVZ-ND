//Empieza la búsqueda
if search==false{
    var find = false
    var xx=choose(-40,0,40)
    var yy=choose(-30,0,30)
    
    //Busca en las 8 tiles de alrededor
    for(var i = 2; i<=10; i++){
        tile = instance_nth_nearest(x+xx,y+yy,pastoinv_obj,i)
        var proceed = true
        
        with(tile){
            proceed = tile_free();
        }
        
        //Cuando la encuentra, se sale y actualiza x3, y3, que son la posición final
        if proceed==true{
            x3=tile.x+_tilexx
            y3=tile.y+_tileyy
            find=true
            break;
        }
    }
    
    //Si no encontró nada, la destruye, si no, crea una planta tile invisible
    if find==false{
        instance_create(x,y,gravedestroy_obj)
        instance_destroy(_obj);
        instance_destroy();
    }else{
        //if _tile_plant==1{
            obj_tileplant=instance_create(tile.x,floor(tile.y+35-tile.offset),_obj.object_index);
            with(obj_tileplant){shovel=false; visible=false}
        //}
        tile.canplant=false
    }
    search=true
}
    /*}else{
        instance_create(x,y,gravedestroy_obj)
        if instance_exists(obj_sec) instance_destroy(obj_sec);
        if instance_exists(obj_tileplant) instance_destroy(obj_tileplant);
        //if instance_exists(obj_tileplant2) instance_destroy(obj_tileplant2);
        instance_activate_object(_obj)
        instance_destroy(_obj);
        instance_destroy();
    }*/
depth_mod=-50

/* */
/*  */
