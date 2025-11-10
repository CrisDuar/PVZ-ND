event_inherited();

    //if c<3{
        if search==false{
            var _try = 0
            var find = false
            var xx=choose(-40,0,40)
            var yy=choose(-30,0,30)
            
            for(var i = 2; i<=10; i++){
                tile = instance_nth_nearest(x+xx,y+yy,pastoinv_obj,i)
                var proceed = true
                
                with(tile){
                    proceed = tile_free();
                }
                if proceed==true{
                    x3=tile.x+_tilexx
                    y3=tile.y+_tileyy
                    find=true
                    break;
                }
                _try++
            }
                //find=false//REMOVE THIS
            if find==false{
                if distance_to_object(jumpingtileplant_obj)<1{
                    var jump_ptile = instance_nearest(x,y,jumpingtileplant_obj)
                    x3=jump_ptile.x3
                    y3=jump_ptile.y3
                    tile=jump_ptile.tile
                    search=true
                    show_debug_message("Catching another OBJs values")
                }else{
                    instance_create(x,y,gravedestroy_obj)
                    instance_destroy(_obj);
                    show_debug_message(_try)
                    show_debug_message("(Destroyed for some reason)")
                    search=true
                    instance_destroy();
                }
            }else{
                show_debug_message(_try)
                show_debug_message(sprite_index)
                tile.canplant=false
                obj_sec=instance_create(x3,y3,crater1_obj)
                with(obj_sec){jumpingp=true; visible=false}
                search=true
            }
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
if search==true{
    if instance_exists(tile){
        x3=tile.x+_tilexx
        y3=tile.y+_tileyy
    }  
    
    if instance_exists(_obj) and t<1 and search==true{
        _obj.x=x3
        _obj.y=y3
        instance_deactivate_object(_obj)
    }
}

/* */
/*  */
