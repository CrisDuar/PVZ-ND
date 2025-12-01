if toggle==true{
    if keyboard_check_pressed(ord("M")){
        global.progress[? "niveles"] = get_integer("Adventure mode level progress", 74)
    }
    
    if keyboard_check_pressed(ord("K")){
        global.dinero += 5000
    }
    
    if keyboard_check_pressed(ord("N")){
        global.levelhard1 = get_integer("Hardmode day mode level progress", 6)
    }
    
    if keyboard_check_pressed(ord("B")){
        global.levelhard2 = get_integer("Hardmode night level progress", 6)
    }
    
    if keyboard_check_pressed(ord("V")){
        global.levelhard3 = get_integer("Hardmode Pool level progress", 6)
    }
    
    if keyboard_check_pressed(ord("L")){
        global.levelhard4 = get_integer("Hardmode Weather level progress", 6)
    }
    
    if keyboard_check_pressed(ord("Z")){
        global.vasebreaker = get_integer("Vasebreaker level progress", 5)
    }
	
	if keyboard_check_pressed(ord("Z")){
        global.vasebreaker = get_integer("Vasebreaker level progress", 5)
    }
    
    if keyboard_check_pressed(ord("O")){
        room_goto_next();
    }
    
    if keyboard_check_pressed(ord("P")){
        if instance_exists(spawngraves_par_obj){
            with(spawngraves_par_obj){
                visible=!visible
            }
        }
    }
    
    if keyboard_check_pressed(vk_enter){
        if instance_exists(zombispawn_obj){
            with(zombispawn_obj){
				create_prize(xx, yy);
            }
        }
    }
    
    if keyboard_check_pressed(ord("X")){
        if instance_exists(menuplants_obj){
            with(menuplants_obj){
                t_rechar=0
            }
        }
        
        if instance_exists(menuzombi_obj){
            with(menuzombi_obj){
                t_rechar=0
            }
        }
    }
    
    if instance_exists(control_obj){
        if keyboard_check_pressed(ord("C")){
            control_obj.soles=9975
            control_obj.drawsoles=9975
            
            control_obj.zomes=9975
            control_obj.drawzomes=9975
        }
    }
    
    if instance_exists(zombispawn_obj){
        if keyboard_check_pressed(vk_shift){
            if instance_exists(eatfather_obj){
                with(eatfather_obj){
                    vida=0
                }
            }
        }
        if keyboard_check_pressed(vk_space){
            if zombispawn_obj.h<zombispawn_obj.fn{
                zombispawn_obj.t=0
            }
        }
    }
    
    if keyboard_check_pressed(vk_f5){
        game_restart();
    }
    
    if keyboard_check_pressed(vk_f7){
        if global.lang=="es" global.lang="en" else global.lang="es"
    }
    
    if keyboard_check_pressed(vk_f6){
        global.selectionRoom=level1_sl_rm
        audio_stop_all();
        room_goto(generic_level_rm)
    }
    
    if keyboard_check_pressed(vk_f8){
        controlmenu_obj.showhitboxes = !controlmenu_obj.showhitboxes
    }
    
    if keyboard_check_pressed(vk_f9){
        var _ac = get_integer("Achievement ID", 0)
        
        with(logros_obj){
            get_achievement(_ac)
        }
    }
    
    if keyboard_check_pressed(vk_f12){
        for (var i = 0; i < global.num_logros; i++){
            global.logros[# 0, i] = false;
        }
        global.unlock_logros = 0
    }
    
    if keyboard_check_pressed(ord("O")){
        global.videoq++
        
        if global.videoq>2 global.videoq = 0
    }
    
    if keyboard_check_pressed(vk_enter) and room==loading_rm{
        room_goto_next()
    }
}

if keyboard_check_pressed(vk_f10){
    toggle=!toggle
}

