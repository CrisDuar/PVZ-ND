//MOVEMENT
connected = gamepad_is_connected(variable_global_get(var_str))

var _tile = instance_nearest(x,y,pastoinv_obj);

if (instance_exists(_tile)){
    tile_x = _tile.x//(instance_nearest(x,y,pastoinv_obj)).x
    tile_y = _tile.y//(instance_nearest(x,y,pastoinv_obj)).y
}

//var move=0
var xmove=0;
var ymove=0;

if global.vs_mtouch[type] = false or (connected){
    if (connected){
        //var padh = gamepad_button_check(variable_global_get(var_str), gp_padr) - gamepad_button_check(variable_global_get(var_str), gp_padl);
        //var padv = gamepad_button_check(variable_global_get(var_str), gp_padd) - gamepad_button_check(variable_global_get(var_str), gp_padu);
        
        var sumx=(gamepad_button_check(variable_global_get(var_str), gp_padr) - gamepad_button_check(variable_global_get(var_str), gp_padl));
        var sumy=(gamepad_button_check(variable_global_get(var_str), gp_padu) - gamepad_button_check(variable_global_get(var_str), gp_padd));
        
        if sumx == 0 padx=0
        if sumy == 0 pady=0
        
        padx += sumx*0.075
        pady += sumy*0.075
        
        
        if (padx>=1 or gamepad_button_check_pressed(variable_global_get(var_str), gp_padr))
        and instance_exists(instance_nearest(tile_x+90,tile_y,pastoinv_obj)){
        
            x = instance_nearest(tile_x+90,tile_y,pastoinv_obj).x
            padx=0
        }
        
        if (padx<=-1 or gamepad_button_check_pressed(variable_global_get(var_str), gp_padl))
        and instance_exists(instance_nearest(tile_x-90,tile_y,pastoinv_obj)){
        
            x = instance_nearest(tile_x-90,tile_y,pastoinv_obj).x
            padx=0
        }
        
        if (pady>=1 or gamepad_button_check_pressed(variable_global_get(var_str), gp_padu))
        and instance_exists(instance_nearest(tile_x,tile_y-90,pastoinv_obj)){
        
            y = instance_nearest(tile_x,tile_y-90,pastoinv_obj).y
            pady=0
        }
        
        if (pady<=-1 or gamepad_button_check_pressed(variable_global_get(var_str), gp_padd))
        and instance_exists(instance_nearest(tile_x,tile_y+90,pastoinv_obj)){
        
            y = instance_nearest(tile_x,tile_y+90,pastoinv_obj).y
            pady=0
        }
        
    
        xmove = gamepad_axis_value(variable_global_get(var_str), gp_axislh);
        ymove = gamepad_axis_value(variable_global_get(var_str), gp_axislv);
        
        //if padh!=0 xmove=padh
        //if padv!=0 ymove=padv
        
        gamepad_set_axis_deadzone(variable_global_get(var_str), 0.1);
        
    }else{//KEYBOARD MOVEMENT
        xmove=max(keyboard_check(variable_global_get(right)), keyboard_check(variable_global_get(left)));
        ymove=max(keyboard_check(variable_global_get(up)), keyboard_check(variable_global_get(down)));
        
        var sumx=keyboard_check(variable_global_get(right)) - keyboard_check(variable_global_get(left));
        var sumy=keyboard_check(variable_global_get(up)) - keyboard_check(variable_global_get(down));
        
        if sumx == 0 padx=0
        if sumy == 0 pady=0
        
        padx += sumx*0.075
        pady += sumy*0.075
        
        /*
        if padx>=1 or keyboard_check_pressed(variable_global_get(right)){
            x = instance_nearest(tile_x+90,tile_y,pastoinv_obj).x
            padx=0
        }
        
        if padx<=-1 or keyboard_check_pressed(variable_global_get(left)){
            x = instance_nearest(tile_x-90,tile_y,pastoinv_obj).x
            padx=0
        }
        
        if pady>=1 or keyboard_check_pressed(variable_global_get(up)){
            y = instance_nearest(tile_x,tile_y-90,pastoinv_obj).y
            pady=0
        }
        
        if pady<=-1 or keyboard_check_pressed(variable_global_get(down)){
            y = instance_nearest(tile_x,tile_y+90,pastoinv_obj).y
            pady=0
        }*/
    }
    
    var _ang = arctan2((yprevious-y), (xprevious-x));
    
    if xmove==0{
        x += (tile_x-x)/10
        hspd=0
    }else{
        hspd = clamp(hspd*2 + 1, 0, 8)
        if (connected){
            x = clamp(x + hspd * cos(_ang) * xmove,(instance_nearest(320,92,pastoinv_obj)).x,(instance_nearest(1040,92,pastoinv_obj)).x)        
        }else{
            x = clamp(x + hspd * cos(_ang) * (keyboard_check(variable_global_get(right)) - keyboard_check(variable_global_get(left))),(instance_nearest(320,92,pastoinv_obj)).x,(instance_nearest(1040,92,pastoinv_obj)).x)
        }
    }
    
    if ymove==0{
        y += (tile_y-y)/10
        vspd=0
    }else{
        vspd = clamp(vspd*2 + 1, 0, 8)
        if (connected){
            y = clamp(y + vspd * cos(_ang) * ymove,(instance_nearest(320,92,pastoinv_obj)).y,(instance_nearest(320,560,pastoinv_obj)).y)
        }else{
            y = clamp(y + vspd * cos(_ang) * (keyboard_check(variable_global_get(down)) - keyboard_check(variable_global_get(up))),(instance_nearest(320,92,pastoinv_obj)).y,(instance_nearest(320,560,pastoinv_obj)).y)
        }
    }
}else{///MULTITOUCH
    if os_type==os_android{
        if mt_move==false{
            x += (tile_x-x)/10
            y += (tile_y-y)/10
            init_upd = true;
        }
    }else{
        if mouse_check_button_pressed(mb_left){
            if point_in_rectangle(mouse_x,mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom){
                mt_move = true
                t_ableshovel = true
                xx_place = x
                yy_place = y
            }
        }
        
        if mouse_check_button(mb_left){
            if point_in_rectangle(mouse_x,mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom){
                if t_plant<1 t_plant+=0.025
            }
        }else{
            mt_move=false
            t_plant=0
        }
        
        multi_movement(mt_move, mouse_x, mouse_y)
    }
}