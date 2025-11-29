if global.lang="en" image_index=0
if global.lang="es" image_index=1
    
if (global.progress[? "niveles"] > 14){
    instance_create_layer(x,y,"Instances", morewaysplay_obj);
    instance_destroy();
}