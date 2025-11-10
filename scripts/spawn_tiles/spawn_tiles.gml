/// @description  spawn_tiles(obj, st_column, max_column, size, iswater, st_row, max_row, start, xsize, ysep)
/// @param obj
/// @param  st_column
/// @param  max_column
/// @param  size
/// @param  iswater
/// @param  st_row
/// @param  max_row
/// @param  start
/// @param  xsize
/// @param  ysep
/// spawn_tiles(obj, water, size, column, start)
function spawn_tiles() {
	var obj=argument[0];
	var st_column=0
	var max_column=9
	var size=1
	var iswater=false
	var st_row=0
	var max_row=5
	var start=84
	var xsize=1
	var ysep=104
	/*iswater = argument1;
	size=argument2 //1
	column=argument3 //5
	start=argument4 //84*/

	if(argument_count > 1) {if argument[1]!=""{st_column = argument[1]}}
	if(argument_count > 2) {if argument[2]!=""{max_column = argument[2]}}
	if(argument_count > 3) {if argument[3]!=""{size = argument[3]}}
	if(argument_count > 4) {if argument[4]!=""{iswater = argument[4]}}
	if(argument_count > 5) {if argument[5]!=""{st_row = argument[5]}}
	if(argument_count > 6) {if argument[6]!=""{max_row = argument[6]}}
	if(argument_count > 7) {if argument[7]!=""{start = argument[7]}}
	if(argument_count > 8) {if argument[8]!=""{xsize = argument[8]}}
	if(argument_count > 9) {if argument[9]!=""{ysep = argument[9]}}

	buffer=0

	for (var i=st_column; i<max_column; i++){//columnas
	    buffer=282+(90*xsize)*i
	    for (var j=st_row; j<max_row; j++){//rows/filas
	        with(instance_create(buffer+41,start+(ysep*size)*j+49,obj)){
	        column=i
	        row=j
	        water=iswater
	        image_yscale=size
	        image_xscale=xsize
	        if water=true{
	            snd1=aguaplant_snd
	            snd2=aguaplant_snd
	        }
	        }
	    }
	}



}
