var proceed=true

with(obj){
    if (in_danger == true){
        proceed=false
    }
}

if proceed==true{
    with(instance_nearest(x,y,pastoinv_obj)){
        event_user(0);
    }
}

instance_destroy();

