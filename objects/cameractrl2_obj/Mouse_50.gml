if !instance_exists(fadeout_obj) and drag==true{
    if __view_get( e__VW.XView, 0 )>=0 and __view_get( e__VW.XView, 0 )<=limit{
        __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (mx - mouse_x) )
        
        if abs(mx - mouse_x) > 5{
            with(levelglobal_obj){
                drag_t = 0
            }
        }
    }
    
    clamp(__view_get( e__VW.XView, 0 ),0,limit)
}

