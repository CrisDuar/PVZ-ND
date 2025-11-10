if done==false{
    switch(global.battle_map){
        default://DÍA Y TARDE
            ds_list_add(plist, 
            menupea1_spr, 
            menusnpea1_spr, 
            menurepea1_spr, 
            nutslot1_spr, 
            garlicdroneslot1_spr, 
            cherryslot1_spr
            )
            
            if global.battle_diff>=2 ds_list_add(plist, potatomslot1_spr)
        break;
        
        case 2://Night
            ds_list_add(plist, 
            menupuff1_spr, 
            menumiedica1_spr, 
            menufume1_spr, 
            nutslot1_spr, 
            garlicdroneslot1_spr, 
            menusetahielo1_spr
            )
            
            if global.battle_diff>=2 ds_list_add(plist, menugravebuster1_spr)
        break;
        
        case 3://Piscina
            ds_list_add(plist, 
            menupea1_spr, 
            guacodileslot_spr, 
            melonslot_spr, 
            nutslot1_spr, 
            garlicdroneslot1_spr, 
            cherryslot1_spr
            )
            
            if global.battle_diff>=2 ds_list_add(plist, kelpslot_spr)
        break
        
        case 4://RAIN
            ds_list_add(plist, 
            menupuff2_spr, 
            juncoslot_spr, 
            morfosetaslot_spr, 
            nutslot1_spr, 
            garlicdroneslot1_spr, 
            setatoxicaslot_spr, 
            )
            
            if global.battle_diff>=2 ds_list_add(plist, kelpslot_spr)
        break;
        
        case 5://FOG
            ds_list_add(plist, 
            menupuff1_spr, 
            juncoslot_spr, 
            morfosetaslot_spr, 
            nutslot1_spr, 
            garlicdroneslot1_spr, 
            setatoxicaslot_spr
            )
            
            if global.battle_diff>=2 ds_list_add(plist, menugravebuster1_spr)
        break;
    }
    
    done=true
}

if global.lang="es"{
    image_index=1
}else{
    image_index=0
}

if image_alpha<1 image_alpha+=0.2
if global.playerReady=true{vspeed-=0.5}
if vspeed < -40{instance_destroy()}

