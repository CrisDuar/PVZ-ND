if image_alpha>0.9{
switch(direction){
    case 0:
    direction=choose(45, 330)
    break
    
    case 330:
    direction=45
    break
    
    case 45:
    direction=330
    break
}
instance_create(x,y,bulbatck2_obj)
image_alpha=0.2
}

