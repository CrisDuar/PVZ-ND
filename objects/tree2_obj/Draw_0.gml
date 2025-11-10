event_inherited();

draw_set_alpha(a_)
draw_set_colour(c_red)

if instance_exists(obj){
    if obj.object_index!=imp_obj{draw_line_width(x+13, y-21,obj.x-20,obj.y-90+(30*obj.water),3)}
    else{draw_line_width(x+10,y-20,obj.x,obj.y-90+40+(30*obj.water),3)}
    
    draw_set_alpha(a_/2)
    
    if obj.object_index!=imp_obj{draw_line_width(x+13,y-21,obj.x-20,obj.y-90+(30*obj.water),5)}
    else{draw_line_width(x+10,y-20,obj.x,obj.y-90+40+(30*obj.water),5)}   
}

draw_set_colour(c_white)
draw_set_alpha(1)


/*
draw_text(x,y-30,"state: " + string(state))
draw_text(x,y-10,"cry: " + string(cry))
draw_text(x,y+10,"time: " + string(time))

/* */
/*  */
