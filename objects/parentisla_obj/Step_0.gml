if done==false{
    var temp_lst = ds_list_create()
    var obj_island=collision_rectangle_list(0,0,x,room_height,parentisla_obj,true,false,temp_lst,false)//collision_line_first(x,y,0,y,parentisla_obj,false,true)
    var new_up = 0
    if obj_island%2 == 0{
        new_up = 180//obj_island.start_up+180
        if new_up >= 360 new_up=0
        
        start_up=new_up
        up=start_up
        done=true
    }else{
        start_up=0
        up=0
        done=true
    }
    
    ds_list_destroy(temp_lst)
}



//Subir y bajar
if up<360 up++ else up=0
yy = 15*sin(degtorad(up))

y=ystart+yy

/*if subiendo=true{vspeed-=0.01*dlt}
if vspeed<=-0.51{subiendo=false}
if vspeed>=0.5{subiendo=true}
if subiendo=false{vspeed+=0.01*dlt}*/
/*if subiendo=true{y += sin(current_time*0.0018)*0.3}
else{y -= sin(current_time*0.0018)*0.3}*/
/*
t = (t + increment) mod 360;
shift = amplitude * dsin(t);

//clone the movement from the object's speed and direction
xx += hspeed;
yy += vspeed;

//apply the shift
if subiendo=true{
x = xx + lengthdir_x(shift, direction + 90);
y = yy + lengthdir_y(shift, direction + 90);
}
else{
x = xx - lengthdir_x(shift, direction + 90);
y = yy - lengthdir_y(shift, direction + 90);
}
/*
if (x+sprite_width-sprite_xoffset)<(view_xview)
|| (x-sprite_xoffset)>(view_xview+view_wview)
|| (y+sprite_height-sprite_yoffset)<(view_yview)
|| (y-sprite_yoffset)>(view_yview+view_hview)
{
visible=false
}
else{
visible=true
}

/* */
/*  */
