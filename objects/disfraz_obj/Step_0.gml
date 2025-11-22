if (get_costume(menuselectplan_obj.plant) and !menuselectplan_obj.islock){
    image_alpha=1
}else{
    image_alpha=0.5
}

if enter==true{
    image_index=1
}else{
    image_index=0
}

if (global.playerReady) instance_destroy();