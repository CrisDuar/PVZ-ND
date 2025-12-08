if bar<global.brains bar+=0.01
if bar>global.brains bar-=0.05

//efecto rojo
if r<global.dianas{
    red=1
    r++
}

if red>0 red-=0.05

if global.brains>=maxbrains and zombieswin=false{
    audio_stop_all();
    global.nivelterminado=true
    audio_play_sound(prize_snd,1,false)
    //instance_create(655,335,zombiswin2p_obj)
    zombieswin=true
	
	with(zombispawn_obj){
		
		create_prize(655, 335);
	}
}

if (keyboard_check_pressed(ord("P"))) t = 0;

if global.gameover=false and global.nivelterminado=false and global.iniciogame=true{
    if t>0{
        t-=0.75+0.25*global.battle_diff
    }else{
        repeat(irandom_range(1,m)){
            
            //ESCOGER LA LÍNEA
			var _y, _x;
			
            if instance_exists(typeplant2_obj){
                _y = pick_lane_battles()
            }else{
                _y = irandom_range(140, 550);
            }
            
            var zom = collision_line_first(0,_y,980,_y,eatfather_obj,false,false)
            var zom_x = trazo_obj.x
			
            if zom!=noone{
                zom_x = zom.x
            }
            
            _x = irandom_range(319, max(320,zom_x-300))
            
           //PLANTING (MAIN)
            with(instance_nearest(_x,_y,pastoinv_obj)){////iplant_tile_obj
                if distance_to_object(typeplant_obj)>5
                and distance_to_object(tanglekelp_obj)>5
                and check_obstacles(){
                
                    audio_play_sound(choose(plantado1_snd,plantado2_snd),1,false)
                    var a=random(100)
					
                    if (other.m == 1) a=100
					
                    var per1, per2, per3;
                    
                    switch(global.battle_diff){
                        case 0:
                            per1=75
                            per2=50
                            per3=30
                        break
                        
                        case 1:
                            per1=80
                            per2=55
                            per3=35
                        break
                        
                        case 2:
                            per1=85
                            per2=60
                            per3=40
                        break
                    }
                    
                    if (water==true or distance_to_object(charco_obj)<1) and distance_to_object(nenufar_obj)>0{          
                        if able_to_plant(28) instance_create_layer(x,floor(y+35-offset), "Instances",nenufar_obj);
                    }
                    
                    if a>per1{//WEAK
                        switch(global.battle_map){
                            default://DÍA Y TARDE
								spawn_plant(plants_id.PEASHOOTER, 0)
                                //instance_create_layer(x,floor(y+25-offset), "Instances",peashooter_obj)
                            break;
                            
                            case 2://Night
                            case 5://FOG
                                instance_create(x,floor(y+25-offset),puffshroom_obj)
                            break;
                            
                            case 4://RAIN
                                
                                with(instance_create(x,floor(y+25-offset),puffshroom_obj)){
                                    disfraz=1
                                    event_user(0)
                                }
                                
                            break;
                        }
                    }else if a>per2{//MEDIUM
                        switch(global.battle_map){
                            default://DÍA Y TARDE
								spawn_plant(plants_id.SNOWPEA, 0)
                                //instance_create(x,floor(y+25-offset),snowpea_obj)
                            break;
                            
                            case 2://Night
                                instance_create(x,floor(y+25-offset),setamiedica_obj)
                            break;
                            
                            case 3://Piscina
                                instance_create(x,floor(y+25-offset),guacodrilo_obj)
                            break
                            
                            case 4://RAIN
                            case 5://FOG
                                instance_create(x,floor(y+25-offset),junco_obj)
                            break;
                        }
                    }else if a>per3{//SUN PRODUCTION
                        switch(global.battle_map){
                            default://DÍA, TARDE y piscina
								spawn_plant(plants_id.SUNFLOWER, 0)
                                //instance_create(x,floor(y+25-offset),sunflower_obj);
                            break;
                            
                            case 2://Night
                            case 4://RAIN
                            case 5://FOG
                                instance_create(x,floor(y+25-offset),setasolar_obj);
                            break;
                        }
                        
                    }else if a>=0{//STRONG
                        switch(global.battle_map){
                            default://DÍA Y TARDE
								spawn_plant(plants_id.REPEATER, 0)
                                //instance_create(x,floor(y+25-offset),Repeater_obj)
                            break;
                            
                            case 2://Night
                                instance_create(x,floor(y+25-offset),fumeshroom_obj)
                            break
                            
                            case 3://Piscina
                                instance_create(x,floor(y+25-offset),melon_obj)
                            break
                            
                            case 4://RAIN
                            case 5://FOG
                                instance_create(x,floor(y+25-offset),morfoseta_obj)
                            break;
                        }
                    }
                }else if distance_to_object(garlicdrone_obj)>10{
					spawn_plant(plants_id.GARLICDRONE, 0);
                    //instance_create(x,floor(y-10-offset),garlicdrone_obj)
                    audio_play_sound(choose(plantado1_snd,plantado2_snd),1,false)
                }
            }
        }
        t=60*random_range(7,14)
        
        //ALERTA TEXTO EN PANTALLA
        if (m>=1 and alert=0) or (m>=2 and alert=1) or (m>=3 and alert=2){
            alert++
            with(instance_create(x,y,finalwave_obj)){sprite_index=plantgrow_spr}
        }
        if m<=3{
            switch(global.battle_diff){
                case 0:
                    m+=0.05
                break
                
                case 1:
                    m+=0.1
                break
                
                case 2:
                    m+=0.15
                break
            }
        }
    }
    
    //PLANTAS DE DEFENSA O EXPLOSIVAS
    if (t2 > 0){
		
        t2--;
		
    }else{
        t2 = 60 * (60 - 10 * global.battle_diff)
		/*if global.battle_diff==0{
            other.t2=60*60
        }else if global.battle_diff==1{
            other.t2=60*50
        }else{
            other.t2=60*40
        }*/
		
		
        with(pastoinv_obj){////iplant_tile_obj
            if distance_to_object(typeplant_obj)>0
            and distance_to_object(tanglekelp_obj)>0
            and check_obstacles(){
				
                if (collision_rectangle(x,y-10,x+100,y+30,eatfather_obj,false,false) and column <= 5){
                
                    if (water==true or distance_to_object(charco_obj)<5) and distance_to_object(nenufar_obj)>5{          
                        able_to_plant(28) instance_create(x,floor(y+35-offset),nenufar_obj);
                    }
					
					spawn_plant(plants_id.WALLNUT, 0)
                    //instance_create(x,floor(y+25-offset),wallnut_obj)
                    audio_play_sound(choose(plantado1_snd,plantado2_snd),1,false)
                    
                    break;
                }
            }
        } 
    }
    
    //PLANTAS EXPLOSIVAS
    if (t3 > 0){
		
        t3--;
		
    }else{
        t3 = 60 * (60 - 10 * global.battle_diff);
        
        with(pastoinv_obj){
            if distance_to_object(typeplant_obj)>0
            and distance_to_object(tanglekelp_obj)>5
            and check_obstacles(){
				
                if (distance_to_object(eatfather_obj) <= 90 and column <= 3){//EXPLOSIONS
                
                    if (water==true or distance_to_object(charco_obj)<5) and distance_to_object(nenufar_obj)>5{          
                        able_to_plant(28) instance_create(x,floor(y+35-offset),nenufar_obj);
                    }
                    
					audio_play_sound(choose(plantado1_snd,plantado2_snd),1,false)
					
                    if (global.battle_map <= 1){
                    
                        spawn_plant(plants_id.CHERRYBOMB, 0);
                        //instance_create(x,floor(y-offset),cherry_obj)

                    }else if global.battle_map==2{

                        instance_create(x,floor(y+25-offset),setahielo_obj)
                        
                    }else if global.battle_map==4 or global.battle_map==5{
                    
                        instance_create(x,floor(y+25-offset),setatoxica_obj)
                        
                    }
					
                    break;
                }
            }
        }
    }
        
    //COMEPIEDRAS (SÓLO EN EL MODO DIFÍCIL)
    if (global.battle_diff>=2){
        if (t4 > 0){
            t4--;
        }else{
            switch(global.battle_map){
                case 0://POTATOMINE
                case 1:
                    var _xx = random_range(300,700)
                    var _yy = random(640)
                    
                    with(instance_nearest(_xx,_yy,pastoinv_obj)){
                        if able_to_plant(plants_id.POTATOMINE){
							spawn_plant(plants_id.POTATOMINE, 0)
                            //instance_create(x,floor(y+30-offset),potatomine_obj)
                            audio_play_sound(choose(plantado1_snd,plantado2_snd),1,false)
                        }
                    }
                break
                
                case 3:
                case 4://TANGLE KELP
                    var _xx = irandom_range(700,1200)
                    var _yy = irandom(640)
                    var _test = -1
                    
                    if instance_exists(charco_obj){
                        with(instance_nearest(_xx,_yy,charco_obj)){
                            with(instance_nearest(x,y,pastoinv_obj)){
                                if able_to_plant(29) == 1{
                                    instance_create(x,floor(y+30-offset),tanglekelp_obj)
                                    audio_play_sound(aguaplant_snd,1,false)
                                }
                                _test = able_to_plant(29) 
                            }
                        }
                    }else if global.battle_map==3{
                        _yy = irandom_range(300,410)
                        with(instance_nearest(_xx,_yy,pastoinv_obj)){
                            if able_to_plant(29) == 1{
                                instance_create(x,floor(y+30-offset),tanglekelp_obj)
                                audio_play_sound(aguaplant_snd,1,false)
                            }
                            _test = able_to_plant(29) 
                        }
                    }
                    show_debug_message("tangle tangle" + string(_test))
                break;
            
                default://GRAVEBUSTER
                    if instance_exists(gravedetect_obj){
                        with(instance_nearest(random_range(700,1200),random(640),gravedetect_obj)){
                            with(instance_nearest(x,y,pastoinv_obj)){
                                audio_play_sound(choose(plantado1_snd,plantado2_snd),1,false)
                                with(instance_create(x,y,gravebuster_obj)){
                                    vspd=0.125
                                    timer=6*60
                                    maxhp=50
                                    vida=50
                                }
                            }
                        }
                    }
                break
            }
			
            t4=60*40
        }
    }
}

//GAME OVER
if global.dianas>=3 and global.gameover==false{
    audio_stop_all();
    audio_play_sound(choose(zfall1_snd,zfall2_snd),0.5,false)
    global.gameover=true
    audio_play_sound(gameover_snd,1,false)
    
    control_obj.seleccionado=0
    control_obj.zomseleccionado=0
    control_obj.pala=false
    
    with(instance_create(x,y,void_obj)){
        timeline_index = game_over_saveseed_tml
        timeline_position = 0;
        timeline_running = true
    }
}

/* */
/*  */
