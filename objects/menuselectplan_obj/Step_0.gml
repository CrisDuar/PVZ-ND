if vspeed<0 and spawngui==false{
    vspeed+=0.2
}

if down=true{vspeed+=0.5}

if vspeed>=0 and spawngui==false{
    y=floor(y)
    
    ///CANTIDAD DE SEMILLEROS
    if instance_exists(survconfig_obj){
        slots=8
        var temp_spawner = zs_endless_obj
        
        //if (room==survival2_rm) temp_spawner = zombiespawnsurv2_obj
        
        if zs_endless_obj.survprogress>=5 and zs_endless_obj.survprogress<15{
            slots=7
        }else if zs_endless_obj.survprogress>=15 and zs_endless_obj.survprogress<30{
            slots=6
        }else if zs_endless_obj.survprogress>=30{
            slots=5
        }
        
    }else{
        if room!=iplant_rm and room!=izombie_rm{
            slots=5
            //if (global.niveles>10)
			if (global.progress[? "niveles"] > 10) slots++
            
            if control_obj.multijugador==false{
                //if (global.niveles>61) 
				if (global.progress[? "niveles"] > 61) slots++
                //if (global.upgrade2==true) 
				if (global.progress[? "upgrade2"] > 13) slots++
            }
        }else{
            slots=8-global.battle_diff
        }
    }
    
    //TIPOS DE SELECTORES
    
    if sprite_index=menuselectplant_spr{//PLANTAS
        with(instance_create_layer(x-300,35,"GUI",menusol_obj)){gui=true}
        
        spawngui_scr()
        instance_create_layer(x,y+262,"GUI",letsgo_obj);
        instance_create_layer(x+116,y-36,"GUI",buttonpages_obj)
        with(instance_create_layer(x-116,y-36,"GUI",buttonpages_obj)){image_xscale=-1}
        
        instance_create_layer(x-163,y+210,"GUI",deleteselect_obj); 
        instance_create_layer(x-163,y+160,"GUI",reselect_obj);
        instance_create_layer(x-163,y+110,"GUI",disfraz_obj);
        
        //if (global.niveles>13) 
		if (global.progress[? "niveles"] > 13) instance_create_layer(x+163,y+210,"GUI",almanacshortcut_obj);
        
        //if (global.niveles>19)
		if (global.progress[? "niveles"] > 19) instance_create_layer(x+163,y+160,"GUI",shopshortcut_obj);
        
    }else if sprite_index=menuselectzomb_spr{//ZOMBIS
        with(instance_create_layer(x-300,35,"GUI",menuzom_obj)){gui=true}
        instance_create_layer(x+300,35,"GUI",enemies_obj)
        spawnguizom_scr(0);
        instance_create_layer(x,y+262,"GUI",letsgo_obj);
        instance_create_layer(x+116,y-36,"GUI",buttonzompages_obj)
        with(instance_create_layer(x-116,y-36,"GUI",buttonzompages_obj)){image_xscale=-1}
    
        instance_create_layer(x-163,y+210,"GUI",deleteselect_obj);
        
       // if (global.niveles>13) 
	   if (global.progress[? "niveles"] > 13) instance_create_layer(x+163,y+210,"GUI",almanacshortcut_obj);
        
    }else{//MULTIJUGADOR
        with(instance_create_layer(x+626,35,"GUI",menuzom_obj)){gui=true}
        with(instance_create_layer(x-300,35,"GUI",menusol_obj)){gui=true}
        
        spawngui_scr(); 
        spawnguizom_scr(326);
        instance_create_layer(x,y+262,"GUI",letsgo_obj);
        instance_create_layer(x,y,"Control",chooseseeds1_obj); 
        instance_create_layer(x,y,"Control",choosezombies1_obj)
        
        if global.vs_mtouch[0] = true{
            //instance_create(x,y+240,buttonpages_obj); with(instance_create(x,y+240,buttonpages_obj)){image_xscale=-1}
            instance_create_layer(x+100,y-36,"GUI",buttonpages_obj); with(instance_create_layer(x-100,y-36,"GUI",buttonpages_obj)){image_xscale=-1}
        }
        
        if global.vs_mtouch[1] = true{
            //instance_create(x+326,y+240,buttonzompages_obj); with(instance_create(x+326,y+240,buttonzompages_obj)){image_xscale=-1}
            instance_create_layer(x+100+326,y-36,"GUI",buttonzompages_obj); with(instance_create_layer(x-100+326,y-36,"GUI",buttonzompages_obj)){image_xscale=-1}
        }
    }
    
    if instance_exists(lock_selection_obj){
        var _sl = lock_selection_obj.slots;
    
        if (_sl > 0) slots = _sl;
    }
    
    //CASILLAS VACIAS
    for (var i=0; i<slots; i++){
        with(instance_create_layer(x-300,(101+(63*i)),"GUI",select_obj)){
            slotnum = i
        }
        
        if sprite_index=menuselectmult_spr{
            instance_create_layer(x+626,(101+(63*i)),"GUI",select_obj)
        }
    }
    
    spawngui=true
}

if spawngui=true{
    if opacidad<1 opacidad += 0.3
    
    if instance_exists(lock_selection_obj){
        if (opacidad >= 1 and !lockdone){
        /*Gonna save this for later
            if (lock_selection_obj.plants == noone){
                lock_selection_obj.plants = pick_random_lock_seeds(2);
            }
        */
            pick_lock_seeds()
            lockdone = true;
        }
    }
}

if subimage<sprite_get_number(unitsprite){subimage += 0.16}else{subimage=0}

with(globalselect_obj){
    if type=0{
        if page=other.pag{visible=true}
        else{visible=false}
    }
    if type=1{
        if page=other.zompag{visible=true}
        else{visible=false}  
    }
}

if vspeed>=30{
    instance_destroy()
}

if vspeed=0{
    if (unitsprite==plantorcha1_spr or unitsprite==peadis2_spr){
        part_particles_create(part, x-random_range(-10,12), y-140, p1, irandom_range(1,2));
        yy=0; up=0
    }else if unitsprite==ghostpepper1_spr 
    or unitsprite==rotinabo1_spr
    or unitsprite==nenufar_spr 
    or unitsprite==garlicdrone_spr 
    or unitsprite==garlicds_spr 
    or unitsprite==tanglekelp_spr{
        if up<360 up+=2 else up=0
        yy = 5*sin(degtorad(up))
    }else{
        yy=0; up=0
    }
}
//pages for plants
if sprite_index==menuselectplant_spr{
    if pag >= hp5 and hp5<maxpag{
        hp5=pag+2
        if hp5>maxpag hp5=maxpag
        hp4=hp5-1
        hp3=hp5-2
        hp2=hp5-3
        hp1=hp5-4
    }
    
    if pag <= hp1 and hp1>0{
        hp1=pag - 2
        if hp1<0 hp1=0
        hp2=hp1+1
        hp3=hp1+2
        hp4=hp1+3
        hp5=hp1+4
    }
}
//pages for zombies
else if sprite_index==menuselectzomb_spr{
    if zompag >= hz5 and hz5<zommaxpag{
        hz5=zompag+1
        if hz5>zommaxpag hz5=zommaxpag
        hz4=hz5-1
        hz3=hz5-2
        hz2=hz5-3
        hz1=hz5-4
    }
    
    if zompag <= hz1 and hz1>0{
        hz1=zompag - 1
        if hz1<0 hp1=0
        hz2=hz1+1
        hz3=hz1+2
        hz4=hz1+3
        hz5=hz1+4
    }
}

/* */
/*  */
