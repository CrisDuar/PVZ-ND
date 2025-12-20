if (global.vssudden){//IF SUDDEN DEATH IS ENABLED
    if (!global.nivelterminado and global.iniciogame and !global.gameover){
        if time<timeobjetive{
            time++
        }else{
            if (!suddendeath){
				
				suddendeath=true
                global.hordafinal=true
                with(instance_create(x,y,hugeofzombies_obj)){sprite_index=sudden_spr}
                audio_play_sound(hugeaproaching_snd,1,false)
                
                /*
				
                if instance_exists(menusun_obj){with(menusun_obj){instance_create(x,y,bloqplant_obj); instance_destroy()}}
                if instance_exists(menubirasol_obj){with(menubirasol_obj){instance_create(x,y,bloqplant_obj); instance_destroy()}}
                if instance_exists(menugoldbloom_obj){with(menugoldbloom_obj){instance_create(x,y,bloqplant_obj); instance_destroy()}}
                if instance_exists(zomgravestoneslot_obj){with(zomgravestoneslot_obj){instance_create(x,y,bloqplant_obj); instance_destroy()}}
                if instance_exists(menusetasolar_obj){with(menusetasolar_obj){instance_create(x,y,bloqplant_obj); instance_destroy()}}
                if instance_exists(menugravebuster_obj){with(menugravebuster_obj){instance_create(x,y,bloqplant_obj); instance_destroy()}}
                if instance_exists(zompanelslot_obj){with(zompanelslot_obj){instance_create(x,y,bloqplant_obj); instance_destroy()}}
                */
                with(menuparent_obj){
					
					if (array_contains(tags, packet_tags.SD_DISABLED)){
						instance_create_layer(x, y, "GUI",bloqplant_obj);
						instance_destroy();
					}
					
                    if sd_rechar{
                        t_mult=3
                    }
                    
                    var _list = ds_list_create()
                    multno = collision_rectangle_list(list_n,y+1,-200,0,list_type,false,false,ds_list_create(),false)
                    ds_list_destroy(_list);
                }
                
                if instance_exists(globalpod_obj){
                    with(globalpod_obj){
                        activada=true
                        image_speed=0.5
                        sudden_death=true
                    }
                }
            }
        }
    }
}

