/// @description update_costumes()
function update_costumes() {

	//Use it to add the conditions to unlock the costume.
	//[X, _] starts in [4] and [_, Y] is the index of the plant

	/* In [X, _]
	0 is for the plant type
	1 is for the current costume
	2 is for the counter of the costume
	3 is for no costume (always 0)
	4... is for costumes
	*/

	//peashooter
	if global.niveles>11 global.costumes[# 4, 0] = 1
	if global.costume4=true global.costumes[# 5, 0] = 1

	//Garlic drone
	if global.niveles>25 global.costumes[# 4, 1] = 1

	//SHOP PLANTS
	if global.costume0=true global.costumes[# 4, 2] = 1//Gravebuster
	if global.costume2=true global.costumes[# 4, 3] = 1//Repeater
	if global.costume1=true global.costumes[# 4, 4] = 1//Wallnut
	if global.costume3=true global.costumes[# 4, 5] = 1//Jalapeno
	if global.costume5=true global.costumes[# 4, 7] = 1//Snowpea
	if global.costume6=true global.costumes[# 4, 8] = 1//Healershroom
	if global.costume7=true global.costumes[# 4, 9] = 1//Magnetshroom

	//Puffshroom
	if global.niveles>54 global.costumes[# 4, 6] = 1

	//vasebreaker
	if global.vasebreaker>=6 global.costumes[# 4, 10] = 1

	//init_costumes()




}
