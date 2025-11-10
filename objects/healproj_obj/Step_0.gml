event_inherited();

image_angle+=5

row = instance_nearest(x,y,pastoinv_obj).y

if !instance_exists(obj){
    for(var i = 0; i<=instance_number(pastoinv_obj); i++){
        obj = instance_nth_nearest(x,y-20,pastoinv_obj, i)
        var proceed = false
        
        with(obj){
            if distance_to_object(animgrave_obj)>5
            and distance_to_object(gravedetect_obj)>5
            and distance_to_object(crater1_obj)>5
            and distance_to_object(caja_obj)>5
            and other.row == y{
                proceed = true;
            }
        }
        
        if proceed then break;
    }
}

