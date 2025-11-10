function gamepad_pick_side(argument0) {
	//gamepad_pick_side(numb)
	var n = argument0
	var kb = 0

	if gamepad_is_connected(gamepad[n]){
	    if check[n]==false{
	        if gamepad[n]==global.gamepad_plant{
	            done[n]=true
	            select[n]=-1
	        }else if gamepad[n]==global.gamepad_zombie{
	            done[n]=true
	            select[n]=1
	        }
        
	        check[n]=true
	    }

	    var r = gamepad_button_check_pressed(gamepad[n], gp_padr);
	    var l = gamepad_button_check_pressed(gamepad[n], gp_padl);
	    //var slct = gamepad_button_check_pressed(gamepad[n], gp_start);
	    select[n] = clamp(select[n] + r - l,-1,1);
    
	    if r or l{//QUITAR CONFIRMACIÓN SI SE CAMBIA LA ELECCIÓN
	        done[n]=false
        
	        global.idp_kb[kb] = false
        
	        switch(gamepad[n]){
	            case global.gamepad_plant:
	                global.gamepad_plant=-1
	            break
            
	            case global.gamepad_zombie:
	                global.gamepad_zombie=-1
	            break
	        }
	    }
	    //TECLADO
	    if global.gamepad_plant==-1 and global.gamepad_zombie!=-1{
	        global.idp_kb[0] = true
	        global.idp_kb[1] = false
	    }
    
	    if global.gamepad_plant!=-1 and global.gamepad_zombie==-1{
	        global.idp_kb[0] = false
	        global.idp_kb[1] = true
	    }
    
	    if global.gamepad_plant==-1 and global.gamepad_zombie==-1{
	        global.idp_kb[0] = true
	        global.idp_kb[1] = true
	    }
    
	    if global.gamepad_plant!=-1 and global.gamepad_zombie!=-1{
	        global.idp_kb[0] = false
	        global.idp_kb[1] = false
	    }
    
    
    
	    //ESTABLECER SELECCIÓN
	    switch(select[n]){
	        case 0:
	            //global.idp_kb[kb] = true
            
	            //if (global.gamepad_plant==gamepad[n]) if global.gamepad_plant==-1
	            //if (global.gamepad_zombie==gamepad[n]) if global.gamepad_zombie==-1
            
            
	        break
          
	        case -1:
	            if global.gamepad_plant==-1{
	                //global.gamepad_plant=gamepad[n]
	                global.idp_kb[0] = false
	            }
	        break
        
	        case 1:
	            if global.gamepad_zombie==-1{
	                //global.gamepad_zombie=gamepad[n]
	                global.idp_kb[1] = false
	            }
	        break
	    }
    
	    //CONFIRMAR
	    if gamepad_button_check_pressed(gamepad[n], gp_face1) or (keyboard_check_pressed(vk_enter)){
	        switch(select[n]){
	            case 0:
	                audio_play_sound(coffee_snd,1,false)
	                done[n]=true
	            break
              
	            case -1:
	                if global.gamepad_plant==-1{//gamepad[n]{
	                    audio_play_sound(coffee_snd,1,false)
	                    global.gamepad_plant=gamepad[n]
	                    done[n]=true
	                }else{
	                    audio_play_sound(errorseed_snd,1,false)
	                }
	            break
            
	            case 1:
	                if global.gamepad_zombie==-1{//gamepad[n]{
	                    audio_play_sound(coffee_snd,1,false)
	                    global.gamepad_zombie=gamepad[n]
	                    done[n]=true
	                }else{
	                    audio_play_sound(errorseed_snd,1,false)
	                }
	            break
	        }
	    }

	}else{
	    gamepad[n]=-1
	    done[n]=false
	}



}
