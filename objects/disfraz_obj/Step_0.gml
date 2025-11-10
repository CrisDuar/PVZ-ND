if get_costume()==1 and menuselectplan_obj.islock == false{
    image_alpha=1
}else{
    image_alpha=0.5
}

if enter==true{
    image_index=1
}else{
    image_index=0
}

if global.playerReady=true{instance_destroy();}

