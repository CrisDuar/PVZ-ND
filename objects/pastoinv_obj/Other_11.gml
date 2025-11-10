/// @description PLANTING
if control_obj.multijugador=false or room==izombie_rm /*or global.vstouch=true*/{
    if (control_obj.zomseleccionado>0){
        tile_set_zombie();
    }

    if (control_obj.seleccionado>0 or control_obj.pala==true){
        tile_set_plant();
    }
}

/* */
/*  */
