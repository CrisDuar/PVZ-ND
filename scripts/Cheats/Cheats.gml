function cheats(){
    show_debug_message("CHEATS LIST:");
    show_debug_message("setAventure <progress>");
    show_debug_message("setHardmode <mode> <progress>");
    show_debug_message("toggleGravespawners");
    show_debug_message("spawnPrize");
    show_debug_message("noRecharge");
    show_debug_message("addSun <sun>");
    show_debug_message("killZombies");
    show_debug_message("nextWave");
    show_debug_message("setLang <lang>");
    show_debug_message("toggleHitboxes");
    show_debug_message("getAchievement");
    show_debug_message("survivalSkip");
}

function setAdventure(_progress){
    global.progress[? "niveles"] = _progress;
}

function setHardmode(_stage = 0, _progress = 1){
    
    global.progress[? "levelhard"][_stage] = _progress;
}

function setVasebreaker(_progress = 0){
    global.progress[? "vasebreaker"] = _progress;
}

function toggleGravespawners(){
    if instance_exists(spawngraves_par_obj){
        with(spawngraves_par_obj){
            sprite_index = object_get_sprite(types[type]);
            visible=!visible
        }
    }
}

function spawnPrize(){
    if instance_exists(zombispawn_obj){
        with(zombispawn_obj){
            create_prize(xx, yy);
        }
    }
}

function noRecharge(){
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

function addSun(_sun = 0){

    control_obj.soles += _sun;
    control_obj.drawsoles += _sun;
    
    control_obj.zomes += _sun;
    control_obj.drawzomes += _sun;
    
}

function addMoney(_money = 0){
    global.dinero += _money;
}

function killZombies(){
    if instance_exists(eatfather_obj){
        with(eatfather_obj){
            vida=0
        }
    }
}

function nextWave(){
    if instance_exists(zombispawn_obj){
        if zombispawn_obj.h<zombispawn_obj.fn{
            zombispawn_obj.t=0
        }
        
    }
}

function setLang(_lang){
    global.lang = _lang;
}
    
function toggleHitboxes(){
    controlmenu_obj.showhitboxes = !controlmenu_obj.showhitboxes
}

function getAchievement(_ac){
    with(logros_obj){
        get_achievement(_ac)
    }
}

function survivalSkip(){
    if (instance_exists(zs_endless_obj)){
        with(zs_endless_obj){
            timer = 0;
        }
    }
}