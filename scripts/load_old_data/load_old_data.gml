/// @description load_old_data
function load_old_data() {
	if file_exists("savedata.nd"){
	var file = file_text_open_read(working_directory + "savedata.nd");

	   global.niveles = file_text_read_real(file);
	   //global.niveles = 21//
	   file_text_readln(file);
   
	   global.dinero = file_text_read_real(file);
	   file_text_readln(file);

	   global.lang = file_text_read_string(file);
	        if global.lang!="es" 
	        and global.lang!="en"{global.lang="en"}
	   file_text_readln(file);
   
	   controlmenu_obj.volevel = file_text_read_real(file);
	        if controlmenu_obj.volevel<=0{controlmenu_obj.volevel=5}
	        if controlmenu_obj.volevel>100{controlmenu_obj.volevel=100}
	   file_text_readln(file);
   
	   global.cursorcolor = file_text_read_real(file);
	   file_text_readln(file);
   
	   global.cursor = file_text_read_real(file);
	   file_text_readln(file);
   
	   global.peashooter_dis=0//file_text_read_real(file);
	   file_text_readln(file);
   
	   global.levelhard1=file_text_read_real(file);
	   file_text_readln(file);
   
	   screenshot=file_text_read_real(file);
	   file_text_readln(file);
   
	   global.garlicdrone_dis=0//file_text_read_real(file);
	   file_text_readln(file);
   
	   global.levelhard2=file_text_read_real(file);
	   file_text_readln(file);
   
	   //Survival
	   global.saveourseeds=file_text_read_real(file);
	   file_text_readln(file);
   
	   global.sunmachine=file_text_read_real(file);
	   file_text_readln(file);
   
	   global.nolawnmower=file_text_read_real(file);
	   file_text_readln(file);
   
	   global.limitlawn=file_text_read_real(file);
	   file_text_readln(file);
   
	   global.survmap=file_text_read_real(file);
	   file_text_readln(file);
   
	   global.survrecord=file_text_read_real(file);
	   file_text_readln(file);
   
	   global.version=file_text_read_real(file);
	   file_text_readln(file);
	   //tienda
	   global.plant0=file_text_read_real(file);
	   file_text_readln(file);
   
	   global.plant1=file_text_read_real(file);
	   file_text_readln(file);
   
	   global.costume0=file_text_read_real(file);
	   file_text_readln(file);
   
	   global.upgrade0=file_text_read_real(file);
	   file_text_readln(file);
   
	   global.upgrade1=file_text_read_real(file);
	   file_text_readln(file);
   
	   global.upgrade2=file_text_read_real(file);
	   file_text_readln(file);
   
	file_text_close(file);
	}



}
