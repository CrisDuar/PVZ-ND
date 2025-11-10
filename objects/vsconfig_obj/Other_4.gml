if room==configvs_rm{
    if global.niveles>73{global.vsmaxmap=5}
    else if global.niveles>51{global.vsmaxmap=3}
    else if global.niveles>30{global.vsmaxmap=2}
    else if global.niveles>15{global.vsmaxmap=1}
}else if room=multiplayer1_rm{
    if global.vsmap==3{
        instance_create(1120,152,zombiediana_obj)
        instance_create(1120,236,zombiediana_obj)
        instance_create(1120,339,zombiediana_obj)
        instance_create(1120,422,zombiediana_obj)
        instance_create(1120,527,zombiediana_obj)
        instance_create(1120,615,zombiediana_obj)
        /*
        instance_create(220,116,podadora_obj)
        instance_create(220,196,podadora_obj)
        instance_create(220,292,podadora3_obj)
        instance_create(220,381,podadora3_obj)
        instance_create(220,492,podadora_obj)
        instance_create(220,576,podadora_obj)
        */
        //Rows
        zombispawn_obj.f1=152
        zombispawn_obj.f2=236
        zombispawn_obj.f3=339
        zombispawn_obj.f4=422
        zombispawn_obj.f5=527
        zombispawn_obj.f6=615
    }else{
        instance_create(1120,168,zombiediana_obj)
        instance_create(1120,272,zombiediana_obj)
        instance_create(1120,368,zombiediana_obj)
        instance_create(1120,480,zombiediana_obj)
        instance_create(1120,591,zombiediana_obj)
        /*
        instance_create(226,127,podadora_obj)
        instance_create(226,224,podadora_obj)
        instance_create(226,326,podadora_obj)
        instance_create(226,434,podadora_obj)
        instance_create(226,539,podadora_obj)*/
    }
    
    switch(global.vsmap){
        default://dia
        if global.vsgamemode!=2{
            manual_preselected(0,menusun_obj,menupea_obj,potatommenu_obj,menunut_obj,cherrymenu_obj,menusnpea_obj)
            manual_preselected(1,zomgravestoneslot_obj,zombiebasicslot_obj,conoslot_obj,estatuaslot_obj,bucketslot_obj,flagslot_obj)
            instance_create(320,264,sunflower_obj)
            instance_create(320,472,sunflower_obj)
            instance_create(1026,get_closest_row(280),zomgrave_obj)
            instance_create(1026,get_closest_row(488),zomgrave_obj)
            instance_create(440,0,musicglobalhorde_obj)
        }else{
            instance_create(688,272,wallnut_obj)
            instance_create(688,472,wallnut_obj)
            
            instance_create(1026,get_closest_row(172),zomgrave_obj)
            instance_create(1026,get_closest_row(280),zomgrave_obj)
            instance_create(1026,get_closest_row(368),zomgrave_obj)
            instance_create(1026,get_closest_row(488),zomgrave_obj)
            instance_create(1026,get_closest_row(592),zomgrave_obj)
            
            instance_create(440,0,musicloop_obj)
            
            instance_destroy(menusol_obj)
            instance_destroy(menuzom_obj)
            with(instance_create(132,0,ctrlcinta1_obj)){num=5}
        }
        
        __background_set( e__BG.Index, 0, _state3_bg )
    break
    
    case 1://tarde
        if global.vsgamemode!=2{
            manual_preselected(0,menusun_obj,menupea_obj,potatommenu_obj,menunut_obj,cherrymenu_obj,garlicdroneslot_obj)
            manual_preselected(1,zomgravestoneslot_obj,zombiebasicslot_obj,conoslot_obj,gardenerslot_obj,doorslot_obj,flagslot_obj)
            
            instance_create(320,160,sunflower_obj)
            instance_create(320,368,sunflower_obj)
            instance_create(320,576,sunflower_obj)
            
            instance_create(1026,get_closest_row(172),zomgrave_obj)
            instance_create(1026,get_closest_row(368),zomgrave_obj)
            instance_create(1026,get_closest_row(592),zomgrave_obj)
            
            instance_create(440,0,musicglobalhorde_obj)
        }else{
        instance_create(688,160,wallnut_obj)
        instance_create(688,368,wallnut_obj)
        instance_create(688,576,wallnut_obj)
        
        instance_create(1026,get_closest_row(172),zomgrave_obj)
        instance_create(1026,get_closest_row(280),zomgrave_obj)
        instance_create(1026,get_closest_row(368),zomgrave_obj)
        instance_create(1026,get_closest_row(488),zomgrave_obj)
        instance_create(1026,get_closest_row(592),zomgrave_obj)
        
        with(instance_create(132,0,ctrlcinta1_obj)){num=5}
        instance_destroy(menusol_obj)
        instance_destroy(menuzom_obj)
        instance_create(440,0,musicloop_obj)
        }
        
    __background_set( e__BG.Index, 0, afternoon_bg )
    break
    
    case 2://noche
        control_obj.night=true
        __background_set( e__BG.Index, 0, night_bg )
        if global.vsgamemode!=2{
            manual_preselected(0,menusun_obj,menupuff_obj,potatommenu_obj,menufume_obj,menuicelettuce_obj,menupeanut_obj)
            manual_preselected(1,zomgravestoneslot_obj,zombiebasicslot_obj,conoslot_obj,estatuaslot_obj,futbolzombieslot_obj,flagslot_obj)
            //instance_create(320,264,setasolar_obj)
            //instance_create(320,472,setasolar_obj)
            instance_create(320,264,sunflower_obj)
            instance_create(320,472,sunflower_obj)
            instance_create(1026,get_closest_row(280),zomgrave_obj)
            instance_create(1026,get_closest_row(368),zomgrave_obj)
            instance_create(1026,get_closest_row(488),zomgrave_obj)
            instance_create(440,0,musicglobalhorde_obj)
        }else{
            instance_create(688,272,wallnut_obj)
            instance_create(688,472,wallnut_obj)
            instance_create(1026,get_closest_row(172),zomgrave_obj)
            instance_create(1026,get_closest_row(280),zomgrave_obj)
            instance_create(1026,get_closest_row(368),zomgrave_obj)
            instance_create(1026,get_closest_row(488),zomgrave_obj)
            instance_create(1026,get_closest_row(592),zomgrave_obj)
            with(instance_create(132,0,ctrlcinta1_obj)){num=6}
            instance_destroy(menusol_obj)
            instance_destroy(menuzom_obj)
            instance_create(440,0,musicloop_obj)
        }
        
        instance_create(760,172,spawngraves2_obj)
        instance_create(760,368,spawngraves_obj)
        instance_create(760,592,spawngraves2_obj)
    break
    
    case 3://Piscina
        __background_set( e__BG.Index, 0, poolday_bg )
        if global.vsgamemode!=2{
            manual_preselected(0,menusun_obj,menupea_obj,kelpslot_obj,potatommenu_obj,cherrymenu_obj,lilyslot_obj)
            manual_preselected(1,zomgravestoneslot_obj,zombiebasicslot_obj,conoslot_obj,trashzombieslot_obj,bucketslot_obj,flagslot_obj)
            instance_create(320,232,sunflower_obj)
            instance_create(320,522,sunflower_obj)
            
            instance_create(1026,240,zomgrave_obj)
            instance_create(1026,535,zomgrave_obj)
            
            instance_create(440,0,musicglobalhorde_obj)
        }else{
            instance_create(688,232,wallnut_obj)
            instance_create(688,525,wallnut_obj)
            
            
            instance_create(1026,zombispawn_obj.f1,zomgrave_obj)
            instance_create(1026,zombispawn_obj.f2,zomgrave_obj)
            instance_create(1026,zombispawn_obj.f3,zomgrave_obj)
            instance_create(1026,zombispawn_obj.f4,zomgrave_obj)
            instance_create(1026,zombispawn_obj.f5,zomgrave_obj)
            instance_create(1026,zombispawn_obj.f6,zomgrave_obj)
            
            with(instance_create(132,0,ctrlcinta1_obj)){num=9}
            instance_destroy(menusol_obj)
            instance_destroy(menuzom_obj)
            instance_create(440,0,musicloop_obj)
        }
        
        instance_create(320,333,nenufar_obj)
        instance_create(320,423,nenufar_obj)
        
        instance_create(410,333,nenufar_obj)
        instance_create(410,423,nenufar_obj)
        
        instance_create(500,333,nenufar_obj)
        instance_create(500,423,nenufar_obj)
        
        trazo_obj.image_yscale=1.05
        with(pastoinv_obj){instance_destroy()}
        spawn_tiles(pastoinv_obj,"","",0.85,"",0,2,70,0.99)
        spawn_tiles(pastoinv_obj,"","",0.85,true,0,2,252,0.99)
        spawn_tiles(pastoinv_obj,"","",0.85,"",0,2,448,0.99)
        
    break
    
    case 4://fog
        __background_set( e__BG.Index, 0, claire2_bg )
        with(instance_create(0,0,fogctrl_obj)){xfinal=605; tls_x=3; xx=605}
        
        if global.vsgamemode!=2{
            manual_preselected(0,menusun_obj,menupea_obj,menuicelettuce_obj,juncoslot_obj,setatoxicaslot_obj,menunut_obj)
            manual_preselected(1,zomgravestoneslot_obj,estatuaslot_obj,conoslot_obj,ghostslot_obj,coffinslot_obj,flagslot_obj)
            instance_create(320,264,sunflower_obj)
            instance_create(320,472,sunflower_obj)
            instance_create(1026,get_closest_row(280),zomgrave_obj)
            //instance_create(1026,get_closest_row(368),zomgrave_obj)
            instance_create(1026,get_closest_row(488),zomgrave_obj)
            instance_create(440,0,musicglobalhorde_obj)
        }else{
            instance_create(688,272,wallnut_obj)
            instance_create(688,472,wallnut_obj)
            instance_create(1026,get_closest_row(172),zomgrave_obj)
            instance_create(1026,get_closest_row(280),zomgrave_obj)
            instance_create(1026,get_closest_row(368),zomgrave_obj)
            instance_create(1026,get_closest_row(488),zomgrave_obj)
            instance_create(1026,get_closest_row(592),zomgrave_obj)
            with(instance_create(132,0,ctrlcinta1_obj)){num=14}
            instance_destroy(menusol_obj)
            instance_destroy(menuzom_obj)
            instance_create(440,0,musicloop_obj)
        }
    break
    
    case 5://darkness
        __background_set( e__BG.Index, 0, claire2_bg )
        instance_create(0,0,stormctrl_obj)
        
        if global.vsgamemode!=2{
            manual_preselected(0,menusun_obj,menupea_obj,menuicelettuce_obj,juncoslot_obj,setatoxicaslot_obj,menunut_obj)
            manual_preselected(1,zomgravestoneslot_obj,zombiebasicslot_obj,conoslot_obj,ghostslot_obj,coffinslot_obj,flagslot_obj)
            instance_create(320,264,sunflower_obj)
            instance_create(320,472,sunflower_obj)
            instance_create(1026,get_closest_row(280),zomgrave_obj)
            //instance_create(1026,get_closest_row(368),zomgrave_obj)
            instance_create(1026,get_closest_row(488),zomgrave_obj)
        }else{
            instance_create(688,272,wallnut_obj)
            instance_create(688,472,wallnut_obj)
            instance_create(1026,get_closest_row(172),zomgrave_obj)
            instance_create(1026,get_closest_row(280),zomgrave_obj)
            instance_create(1026,get_closest_row(368),zomgrave_obj)
            instance_create(1026,get_closest_row(488),zomgrave_obj)
            instance_create(1026,get_closest_row(592),zomgrave_obj)
            with(instance_create(132,0,ctrlcinta1_obj)){num=14}
            instance_destroy(menusol_obj)
            instance_destroy(menuzom_obj)
        }
    break
    
    }
    instance_create(x,y,plantmulti_obj)
    instance_create(x,y,zombimulti_obj)
}


/* */
/*  */
