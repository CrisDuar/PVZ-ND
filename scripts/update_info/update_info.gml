function update_info() {
	menuselectplan_obj.plant=packet;
	menuselectplan_obj.unitcost=cost; 
	menuselectplan_obj.unitsprite=plantsprite; 
	menuselectplan_obj.grass=bg;
	menuselectplan_obj.unitname_es=name_es
	menuselectplan_obj.unitname_en=name_en
	menuselectplan_obj.islock = lock

	//Planta global
	switch(menuselectplan_obj.plant){
	    case menupea_obj:
	        info_sprites(150,peadis1_spr, 175,peadis2_spr)
	    break

	    case garlicdroneslot_obj:
	        info_sprites(150,garlicds_spr)
	    break
    
	    case menugravebuster_obj:
	        info_sprites(25,comepiedras0_spr)
	    break
    
	    case menunut_obj:
	        info_sprites(75,nutcosprev_spr)
	    break
    
	    case menurepea_obj:
	        info_sprites(250,repeadis1_spr)
	    break
    
	    case jalapenoslot_obj:
	        info_sprites(125,jalapeno2_spr)
	    break
    
	    case menupuff_obj:
	        info_sprites(0,marseta1_spr)
	    break
    
	    case menusnpea_obj:
	        info_sprites(325,snowpea2_spr)
	    break
    
	    case menuhealer_obj:
	        info_sprites(75,healershroom4_spr)
	    break
    
	    case magnetslot_obj:
	        info_sprites(150,gmagnet1_spr)
	    break
    
	    case levicottonslot_obj:
	        info_sprites(125, levicottonc1_spr)
	    break
	}




}
