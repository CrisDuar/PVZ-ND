/// @description  prob_card(type)
/// @param type
function prob_card(argument0) {
	var t=argument0

	g=irandom(99)
	spawn = false
	limit_num = 4

	if global.nivelterminado=false{
	    switch(t){
	        default://nivel 4 o por defecto
	            conveyor(false, plants_id.PEASHOOTER, -1, 100, 60)
	            conveyor(false, plants_id.WALLNUT, -1, 60, 40)
	            conveyor(false, plants_id.POTATOMINE, -1, 40, 10)
	            conveyor(false, plants_id.SINGLECHERRY, -1, 10, 0)
	        break

	        case 1://La bolera
	            limit_num = 7
	            conveyor(false, plants_id.BULB_COMMON, -1, 100, 40)
	            conveyor(false, plants_id.BULB_ICE, -1, 40, 15)
	            conveyor(false, plants_id.BULB_FIRE, -1, 15, 0)
	        break
    
	        case 2://Nivel 15 y multijugador
	            conveyor(false, plants_id.PEASHOOTER, -1, 100, 70)
	            conveyor(false, plants_id.WALLNUT, -1, 70, 60)
	            conveyor(false, plants_id.POTATOMINE, -1, 60, 50)
	            conveyor(false, plants_id.SNOWPEA, -1, 50, 35)
	            conveyor(false, plants_id.REPEATER, -1, 35, 25)
	            conveyor(false, plants_id.BOWLINGBULB, -1, 25, 15)
	            conveyor(false, plants_id.GARLICDRONE, -1, 15, 5)
	            conveyor(false, plants_id.SINGLECHERRY, -1, 5, 0)
	    break


	    case 3://Nivel 26
	        limit_num = 7
	        conveyor(false, menugravebuster_obj, 100, 30)
	        conveyor(false, cherrymenu_obj, 30, 25)
	        conveyor(false, menusingcherry_obj, 25, 15)
	        conveyor(false, potatommenu_obj, 15, 5)
	        conveyor(false, menuicelettuce_obj, 5, 0)
	    break

	    case 4://Skeletarius
	        conveyor(false, menugravebuster_obj, 100, 85)
	        conveyor(false, menupuff_obj, 85, 60)
	        conveyor(false, menumiedica_obj, 60, 35)
	        conveyor(false, menuicelettuce_obj, 35, 30)
	        conveyor(false, menupeanut_obj, 30, 25)
	        conveyor(false, menunut_obj, 25, 20)
	        conveyor(false, menufume_obj, 20, 10)
	        conveyor(false, menusetahielo_obj, 10, 0)
        
	    break

	    case 5://multijugador día y tarde
		conveyor(false, plants_id.PEASHOOTER, -1, 100, 70)
	    conveyor(false, plants_id.WALLNUT, -1, 70, 60)
	    conveyor(false, plants_id.POTATOMINE, -1, 60, 50)
	    conveyor(false, plants_id.SNOWPEA, -1, 50, 35)
	    conveyor(false, plants_id.REPEATER, -1, 35, 25)
	    conveyor(false, plants_id.BOWLINGBULB, -1, 25, 15)
	    conveyor(false, plants_id.GARLICDRONE, -1, 15, 5)
	    conveyor(false, plants_id.SINGLECHERRY, -1, 5, 0)
		
		spawn = false;
		conveyor(true, zombies_id.ZOMBIE, -1, 100, 90)
	    conveyor(true, zombies_id.OBST_ZOMGRAVE, -1, 90, 65)
		conveyor(true, zombies_id.ZOMBIE_STATUE, -1, 65, 55)
	    conveyor(true, zombies_id.ZOMBIE_PAPERTHROWER, -1, 55, 45)
		conveyor(true, zombies_id.ZOMBIE_GARDENER, -1, 45, 40)
	    conveyor(true, zombies_id.ZOMBIE_POLEVAULTER, -1, 40, 35)
	    conveyor(true, zombies_id.ZOMBIE_CONEHEAD, -1, 35, 25)
	    conveyor(true, zombies_id.ZOMBIE_BUCKETHEAD, -1, 25, 10)
	    conveyor(true, zombies_id.ZOMBIE_FLAG, -1, 10, 0)
    
	    break

	    case 6://multijugador noche
	        conveyor(false, menugravebuster_obj, 100, 95)
	        conveyor(false, menupuff_obj, 95, 75)
	        conveyor(false, menumiedica_obj, 75, 55)
	        conveyor(false, menuicelettuce_obj, 55, 45)
	        conveyor(false, menunut_obj, 45, 30)
	        conveyor(false, menupeanut_obj, 30, 15)
	        conveyor(false, menufume_obj, 15, 5)
	        conveyor(false, menusetahielo_obj, 5, 0)
        
	        spawn=false
	        //zombies
	        conveyor(true, zombiebasicslot_obj, 100, 95)
	        conveyor(true, impslot_obj, 95, 80)
	        conveyor(true, zomgravestoneslot_obj, 80, 60)
	        conveyor(true, skeletonslot_obj, 60, 50)
	        conveyor(true, zomtorchslot_obj, 50, 45)
	        conveyor(true, conoslot_obj, 45, 35)
	        conveyor(true, bucketslot_obj, 35, 25)
	        conveyor(true, cajaslot_obj, 25, 20)
	        conveyor(true, futbolzombieslot_obj, 20, 10)
	        conveyor(true, flagslot_obj, 10, 0)
    
	    break

	    case 7://Piscina inundada
	        conveyor(false, kelpslot_obj, 100, 80)
	        conveyor(false, narcisoslot_obj, 80, 60)
	        conveyor(false, rotinaboslot_obj, 60, 30)
	        conveyor(false, garlicdroneslot_obj, 30, 15)
        
	        if instance_exists(nenufar_obj)+instance_exists(lilyslot_obj)>instance_exists(Repeater_obj)+instance_exists(menurepea_obj){
	            conveyor(false, menurepea_obj, 15, 0)
	        }else{
	            conveyor(false, lilyslot_obj, 15, 0)
	        }
     
	    break

	    case 8://Piscina y Wet Brains
	        conveyor(false, rotinaboslot_obj, 100, 90)
        
	        if instance_number(charco_obj)+4>instance_number(nenufar_obj)+instance_number(lilyslot_obj){
	             conveyor(false, lilyslot_obj, 90, 75)
	        }else{
	             conveyor(false, menusingcherry_obj, 90, 75)
	        }
        
	        conveyor(false, kelpslot_obj, 75, 65)
	        conveyor(false, narcisoslot_obj, 65, 55)
        
	        conveyor(false, guacodileslot_obj, 55, 40)
	        conveyor(false, melonslot_obj, 40, 30)
        
	        conveyor(false, tripitidoraslot_obj, 30, 20)
        
	        conveyor(false, tallnutslot_obj, 20, 10)
	        conveyor(false, plantorchaslot_obj, 10, 5)
	        conveyor(false, jalapenoslot_obj, 5, 0)
        
	    break

	    case 9://multijugador piscina
	        conveyor(false, kelpslot_obj, 100, 90)
	        conveyor(false, lilyslot_obj, 90, 75)
	        conveyor(false, narcisoslot_obj, 75, 65)
	        conveyor(false, rotinaboslot_obj, 65, 55)
	        conveyor(false, tripitidoraslot_obj, 55, 50)
	        conveyor(false, melonslot_obj, 50, 40)
	        conveyor(false, menupea_obj, 40, 30)
	        conveyor(false, guacodileslot_obj, 30, 20)
	        conveyor(false, tallnutslot_obj, 20, 10)
	        conveyor(false, jalapenoslot_obj, 10, 5)
	        conveyor(false, cherrymenu_obj, 5, 10)
        
	        spawn=false
	        //zombies
	        conveyor(true, duckslot_obj, 100, 85)
	        conveyor(true, zomgravestoneslot_obj, 85, 60)
	        conveyor(true, buzoslot_obj, 60, 50)
	        conveyor(true, icezombieslot_obj, 50, 45)
	        conveyor(true, conoslot_obj, 45, 35)
	        conveyor(true, bucketslot_obj, 35, 25)
	        conveyor(true, cajaslot_obj, 25, 15)
	        conveyor(true, trashzombieslot_obj, 15, 10)
	        conveyor(true, zombonislot_obj, 10, 5)
	        conveyor(true, flagslot_obj, 5, 0)

	    break


	    case 10://Invisighoul
    
	        if instance_number(nenufar_obj)+instance_number(lilyslot_obj)>=2{
	            conveyor(false, menupea_obj, 100, 80)
	            conveyor(false, lilyslot_obj, 80, 70)
	            conveyor(false, potatommenu_obj, 70, 65)
            
	            conveyor(false, menuicelettuce_obj, 65, 55)
	            conveyor(false, menunut_obj, 55, 45)
            
	            conveyor(false, chomperslot_obj, 45, 40)
            
	            conveyor(false, menusetahielo_obj, 20, 10)
	            conveyor(false, apisonaflorslot_obj, 10, 0)
	        }else{
	            conveyor(false, lilyslot_obj, 100, 0)
	        }
    
    
	    break

	case 11://Wet brains night
	    conveyor(false, menupuff_obj, 100, 85)
    
	    if instance_number(charco_obj)+4>instance_number(nenufar_obj)+instance_number(lilyslot_obj){
	         conveyor(false, lilyslot_obj, 85, 70)
	    }else{
	         conveyor(false, menusingcherry_obj, 85, 70)
	    }
    
	    conveyor(false, lilyslot_obj, 90, 70)
	    conveyor(false, narcisoslot_obj, 70, 60)
	    conveyor(false, rotinaboslot_obj, 60, 50)
	    conveyor(false, guacodileslot_obj, 50, 40)
    
	    conveyor(false, tripitidoraslot_obj, 40, 30)
    
	    conveyor(false, menufume_obj, 30, 20)
	    conveyor(false, tallnutslot_obj, 20, 10)
	    conveyor(false, menusetahielo_obj, 10, 0)

	    break

	    case 12://Casa de Claire
	        if instance_number(charco_obj)+instance_number(charco0_obj)>instance_number(nenufar_obj){
	            conveyor(false, lilyslot_obj, 100, 80)
	        }else{
	            conveyor(false, choose(setatoxicaslot_obj,bloverslot_obj), 100, 80)
	        }
        
	        conveyor(false, juncoslot_obj, 80, 70)
	        //if instance_number(plantern_obj)<4  conveyor(false, planternslot_obj, 70, 60) else conveyor(false, juncoslot_obj, 70, 60);
	        conveyor(false, planternslot_obj, 70, 60)
	        conveyor(false, morfosetaslot_obj, 60, 50)
	        conveyor(false, bloverslot_obj, 50, 45)
	        conveyor(false, magnetslot_obj, 45, 35)
	        conveyor(false, setatoxicaslot_obj, 35, 30)
	        conveyor(false, electripearslot_obj, 30, 20)
	        conveyor(false, oculartreeslot_obj, 20, 15)
	        conveyor(false, levicottonslot_obj, 15, 5)
	        conveyor(false, ghostpepperslot_obj, 5, 0)
        

	    break

	        case 13://JEFE CASA CLAIRE
	            conveyor(false, menupuff_obj, 100, 75)
	            conveyor(false, menunut_obj, 75, 65)
	            conveyor(false, minimorfoslot_obj, 65, 55)
	            conveyor(false, oculartreeslot_obj, 55, 50)
	            conveyor(false, menupeanut_obj, 50, 45)
	            conveyor(false, menuicelettuce_obj, 45, 35)
	            conveyor(false, menufume_obj, 35, 15)
	            conveyor(false, juncoslot_obj, 15, 0)
    
	        break

	        case 14://Claire Vs mode
	            conveyor(false, juncoslot_obj, 100, 90)
	            conveyor(false, planternslot_obj, 90, 85)
	            conveyor(false, menucafe_obj, 85, 70)
	            conveyor(false, menumiedica_obj, 70, 60)
	            conveyor(false, bloverslot_obj, 60, 55)
	            conveyor(false, magnetslot_obj, 55, 45)
	            conveyor(false, setatoxicaslot_obj, 45, 40)
	            conveyor(false, electripearslot_obj, 40, 30)
	            conveyor(false, morfosetaslot_obj, 30, 20)
	            conveyor(false, levicottonslot_obj, 20, 10)
	            conveyor(false, ghostpepperslot_obj, 10, 5)
	            conveyor(false, cherrymenu_obj, 5, 0)
            
	            spawn=false
	            //zombies
	            conveyor(true, zombiebasicslot_obj, 100, 85)
	            conveyor(true, zomgravestoneslot_obj, 85, 60)
	            conveyor(true, magoslot_obj, 60, 50)
	            conveyor(true, doctorslot_obj, 50, 45)
	            conveyor(true, conoslot_obj, 45, 35)
	            conveyor(true, bucketslot_obj, 35, 25)
	            conveyor(true, jackslot_obj, 25, 20)
	            conveyor(true, ghostslot_obj, 20, 15)
	            conveyor(true, doctorslot_obj, 15, 10)
	            conveyor(true, coffinslot_obj, 10, 5)
	            conveyor(true, molotovslot_obj, 5, 0)
	        break;
	    }
	}

	show_debug_message("g: " + string(g) + " spawn:" + string(spawn))
	//show_message("spawned=" + string(spawn))




}
