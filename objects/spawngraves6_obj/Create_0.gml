//to edit
event_inherited();
type=grave6_obj
if room==nivel26_rm{
    repawntime = 30
    maxtime=choose(15, 30, 90, 90, 120) + (irandom(30))*60//tiempo para spawnear la tumba
}else{
    repawntime = 90
}

