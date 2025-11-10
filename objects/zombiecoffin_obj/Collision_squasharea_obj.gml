/*if vida>100{
vida=100
}else{
event_inherited();
}*/
if vida>100{
    instance_create(x,y-60+30*water,destroygrave_obj)
    vida-=500
    if vida<100 vida=100
}else{
    event_inherited();
}

/* */
/*  */
