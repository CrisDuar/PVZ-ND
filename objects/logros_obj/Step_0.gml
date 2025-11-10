//ANIMATION

if (room == menu_rm_ and !instance_exists(spacebearlogo_obj)) do_anim = true;

if (!ds_queue_empty(global.logros_fila)){
    
    if (do_sound){
        audio_play_sound(achievement_snd, 1, false)
        do_sound = false    
    }

    if (timer = 0){
        audio_play_sound(lanzar_snd, 1, false)
        
        id_show = ds_queue_head(global.logros_fila)
        global.logros[# 0, id_show] = true;
        timer = max_t
        
        ds_queue_dequeue(global.logros_fila);
    }
}else{
    do_sound = true
}

if (timer > 0){
    
    timer--
    
    if (alpha < 1) alpha+=0.25

}else{
    
    if (alpha > 0) alpha-=0.25
}

///Unlocking achievements

//controlmenu_obj
if (room != multiplayer1_rm 
and room != nivel1_rm 
and room != nivel2_rm
and room != nivel3_rm 
and room != nivel4_rm_
and room != nivel6_rm
and update_logros){
    if (check_logros <= 0){
        //More ways to play available!
        if (global.niveles > 14) get_achievement(0);
        
        //Hard mode and battles unlocked!
        if (global.niveles > 15) get_achievement(1);
        
        //Get achievements!
        if (global.niveles > 6) get_achievement(30);
        
        
        if (global.niveles > 30){
            //Survival endless unlocked!
            get_achievement(2);
            
            //Broken bones
            get_achievement(9);
        }
        
        //Vasebreaker unlocked!
        if (global.niveles > 67) get_achievement(3);
        
        //Strike!
        if (strike) get_achievement(4);
        
        //Haunted Ghost
        if (haunted_ghost) get_achievement(6);
        
        //Explodonator
        if (explodonator >= 10) get_achievement(7);
        
        //control_obj
        
        if (instance_exists(control_obj)){
        
            //Full lawn
            var _occupied = false;
            
            with(pastoinv_obj){
                if (distance_to_object(typeplant2_obj)>0){
                    _occupied = true;
                    break;
                }
            }
            
            if (_occupied == false and global.nivelterminado == false) get_achievement(5);
        
            //Pool's closed
            if (__background_get( e__BG.Index, 0 ) == poolday_bg
            or __background_get( e__BG.Index, 0 ) == poolsunset_bg
            or __background_get( e__BG.Index, 0 ) == poolnight_bg) 
            and global.nivelterminado 
            and room != nivel49_rm
            and room != nivel40_rm
            and room != iplant_rm
            and room != izombie_rm
            and pool_closed{
                get_achievement(8);
            }
            
            //Hydrophobic
            if (hydrophobic and global.nivelterminado and control_obj.rain) get_achievement(12);
            
            //Healthy garden
            if (healthy_garden and healthy_garden_start and global.nivelterminado and levelpassed and room!=nivel40_rm and room!=nivel24_rm) get_achievement(13);
            
            //Sunny day
            if (!instance_exists(ctrlcinta1_obj) and control_obj.soles >= 9975) get_achievement(14);
            
            //New Home
            if (instance_exists(signclaire_obj) and global.nivelterminado) get_achievement(16);
            
            if (string_delete(room_get_name(room), 10, 6) == "levelhard" and global.nivelterminado){
        
                //Long enough
                if (__background_get( e__BG.Index, 1 ) == poolnight_bg and long_enough) get_achievement(17);
                
                if (!instance_exists(ctrlcinta1_obj)){
                    //No fungus among us
                    if (control_obj.night == true and no_fungus) get_achievement(18);
                    
                    //Good morning
                    if (control_obj.night == false){
                        if (good_morning) get_achievement(19);
                        
                        //Low budget
                        if (low_budget) get_achievement(21);
                    }
                }
                
                //Mower care
                if (instance_exists(globalpod_obj) and mower_care) get_achievement(20);
            }        
        }
        
        
        //Sunken brains
        if (global.niveles > 51) get_achievement(10);
        
        //Let there be light
        if (global.niveles > 73) get_achievement(11);
        
        ////and global.nivelterminado=false
    
        
        //SANS
        if (sans) get_achievement(15);
        
        
        //zombiedrop
        
        
        
        //24/7 Defense
        if (survival_get_record("player_surv.ini") >= 15) get_achievement(22);
        
        //Pool party
        if (survival_get_record("pool_surv.ini") >= 15) get_achievement(23);
        
        //Heavy weather
        if (survival_get_record("weather_surv.ini") >= 15) get_achievement(24);
        
        //Crazy? I was crazy once
        if (survival_get_record("player_surv.ini") >= 30
        or survival_get_record("pool_surv.ini") >= 30
        or survival_get_record("weather_surv.ini") >= 30){
            get_achievement(25);
        }
        
        //Treasurer
        if (ruby) get_achievement(26);
        
        //Breaking Vase
        if (global.vasebreaker >= 6) get_achievement(27);
        
        //Undead Mastermind
        if (zmind) get_achievement(28);
        
        //Vegetal Mastermind
        if (pmind) get_achievement(29);
        
        check_logros = 30;
    }else{
        check_logros--;
    }
}else{
    strike = false
    haunted_ghost = false
    explodonator = 0;
    pool_closed = true;
    hydrophobic = true
    healthy_garden = true;
    healthy_garden_start = false
    sans = false
    zmind = false
    pmind = false
}
/*
if (keyboard_check_pressed(ord("W"))){
    
    with(pastoinv_obj){
        show_debug_message(string(row) + ", " + string(column) + ", " + string())
    }
}

if (keyboard_check_pressed(ord("S"))){
    
    with(pastoinv_obj){
        if (distance_to_object(typeplant2_obj>0)){
            show_debug_message(string(row) + ", " + string(column))
        }
    }
}*/

/* */
/*  */
