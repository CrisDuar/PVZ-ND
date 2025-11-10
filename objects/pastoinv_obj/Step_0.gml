able_plant = 0
able_zombie = 0
hover = 0

if canplant==true{
    if (control_obj.multijugador){
        
        if (position_meeting(x,y, plantmulti_obj) and plantmulti_obj.t_shovel<=0) able_plant = able_to_plant(control_obj.seleccionado)
        
        if (position_meeting(x,y, zombimulti_obj)) able_zombie = able_to_zombie();
    
    }else{
        if (position_meeting(mouse_x,mouse_y,self)){
            able_plant = able_to_plant(control_obj.seleccionado)
            
            able_zombie = able_to_zombie();
            
            hover = 1
        }
    }
}

