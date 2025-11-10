if show==true and !point_in_rectangle(mouse_x,mouse_y,pausar_obj.bbox_left,pausar_obj.bbox_top,pausar_obj.bbox_right,pausar_obj.bbox_bottom) and timeline_running=false{
    if timeline==-1{
        if num<=close{
            for(var i=0; i<array_length_1d(mot);i++){
                mot[i]=0
            }
            
            num++;
            ysc=0.98
            xsc=1.02
        }
    }else{
        timeline_index=timeline
        timeline_running=true
    }
}

