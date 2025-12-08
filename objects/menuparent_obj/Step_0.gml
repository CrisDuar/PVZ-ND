//Animación
if localselect=select{
    if selectanim<16{selectanim+=0.25}else{selectanim=0}
}

//Recarga
if t_rechar>0 t_rechar-=t_mult

switch(type){
    case 1:
        cost = 0;
        var cinta_x = 97
        
        if global.nivelterminado=false{
            if (list_type==menuplants_obj){
                if (control_obj.multijugador=true) cinta_x = 199
                
                if (x<cinta_x){
                    x+=3
                }else{
                    x = cinta_x;
                    if (!collision_point(x,y-33,menuplants_obj,false,true) and y>65) y-=1
                }
            }else{
                if (control_obj.multijugador=true) cinta_x = 1155
                
                if (x>cinta_x){
                    x-=3
                }else{
                    x = cinta_x;
                    if (!collision_point(x,y-33,menuzombi_obj,false,true) and y>65) y-=1
                }
            }
        }
    break
    
    case 2://Suelto
        cost=0
        if timer<60*15{
            if localselect!=select timer++
        }else{
            instance_destroy();
        }
        
        if timer>60*10 alpha=0.5  
    break
    
    case 3://Lluvia
        cost=0
        if timer<60*15{
            timer++
        }else if select!=localselect{
            instance_destroy();
        }
        
        if timer>60*10{
            alpha=0.5
        }else{
            if alpha>0 alpha-=0.05
        }
        
        if timer<60*5 y+=0.5
    break
}

if list_type=menuplants_obj{
    if (control_obj.soles<cost) color=c_red else color=c_black
}else{
    if (control_obj.zomes<cost) color=c_red else color=c_black
}


if localselect=select{
    if (list_type==menuplants_obj){
        control_obj.seleccionado=localselect
    }else{
        control_obj.zomseleccionado=localselect
    }
    
    control_obj.drawselect=sprite
}

//Si recarga al principio de la partida
if global.iniciogame=false{
    image_alpha=0
}else{
    image_alpha=1
    if recargstart=true and type==0{
        recargstart=false
        t_rechar=timer*60
    }
}

//Ya no poderse seleccionar
if (audio_is_playing(newplant_snd) or audio_is_playing(finalprize_snd)) {cantselect=true}

//Destruirse en el game over
if global.gameover=true instance_destroy()

//Seleccionar en el multijugador y atajos de teclado
if image_alpha==1 and type<2{

    /*if place_meeting(x,y,selectplant2p_obj) and seedpacket_is_free(){
        select_seedpacket();
    }*/
    

//Conveyor y acceso rápido
    var gamepad=0
    if list_type==menuplants_obj{
        if gamepad_is_connected(global.gamepad_plant){
            if gamepad_button_check(global.gamepad_plant, gp_shoulderr) or gamepad_button_check(global.gamepad_plant, gp_shoulderl) gamepad=1
        }
    }else{
        if gamepad_is_connected(global.gamepad_zombie){
            if gamepad_button_check(global.gamepad_zombie, gp_shoulderr) or gamepad_button_check(global.gamepad_plant, gp_shoulderl) gamepad=1
        }
    }
    
    if keyboard_check_pressed(vk_anykey) or gamepad==1{
        var _list = ds_list_create()
        multno = collision_rectangle_list(list_n,y+1,-200,0,list_type,false,false,ds_list_create(),false)
        ds_list_destroy(_list);
    }
    
    if instance_exists(control2p_obj) and control_obj.multijugador==true{// and global.vs_mtouch[packet_type] = false{
        if list_type==menuplants_obj{
            if control2p_obj.pselect==multno{
                if (seedpacket_is_free() and localselect!=select) select_seedpacket();
            }else{
                if localselect==select audio_play_sound(cancelseedpack_snd,1,false)
                localselect=0
            }
        }else{
             if control2p_obj.zselect==multno{
                if (seedpacket_is_free() and localselect!=select) select_seedpacket();
            }else{
                if localselect==select audio_play_sound(cancelseedpack_snd,1,false)
                localselect=0
            }
        }
    }
    
    if control_obj.multijugador==false{
        if keyboard_check_pressed(ord(string(multno))) {event_perform(ev_mouse,ev_left_press)}
        if keyboard_check_released(ord(string(multno))) and global.shovelpress==true {event_perform(ev_mouse,ev_global_left_release)}
    }
    
}

/* */
/*  */
