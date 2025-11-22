//disfraces
/*global.peashooter_dismax=0
global.garlicdrone_dismax=0
global.gravebuster_dismax=0
global.repeater_dismax=0
global.wallnut_dismax=0
global.jalapeno_dismax=0
global.puffshroom_dismax=0
//peashooter
if global.niveles>11 global.peashooter_dismax++
if global.costume4=true global.peashooter_dismax++

//garlic drone
if global.niveles>25 global.garlicdrone_dismax++

//puffshroom
if global.niveles>54 global.puffshroom_dismax++

//shop
if global.costume0=true global.gravebuster_dismax++
if global.costume1=true global.wallnut_dismax++
if global.costume2=true global.repeater_dismax++
if global.costume3=true global.jalapeno_dismax++
*/

//This commentary is just a test for the very first commit

if room==menu_rm_ and splash==false{
    instance_create(544,320,spacebearlogo_obj)
    splash=true
}

//Discord
update_discord_status()

//Costumes
if (room != loading_rm) update_costumes();

instance_create(x,y,fadeout_obj)



/* */
/*  */
