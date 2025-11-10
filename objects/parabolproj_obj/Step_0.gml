depth=-y-120-depth_mod
if t<t_max{
    if image_alpha<1 image_alpha+=0.05;
    image_angle += rot
    t+=tp
    
    //punto 2
    x2 = (x1 + x3)/2 
    y2 = y3 - h
    
    if instance_exists(obj){
        x3 = obj.x + x3_h
        y3 = obj.y + y3_h
    }
    
    if rule_linear==false{
        //punto 3
        y = (power((1-t),2) * y1) + (2*(1-t)*t*y2) + (power(t,2) * y3)
        
        x = (power((1-t),2) * x1) + (2*(1-t)*t*x2) + (power(t,2) * x3)
    }else{
        y = (1-t)*y1 + t*y3
        
        x = (1-t)*x1 + t*x3
    }
    
    
}else{
    event_user(0)
}

