if (loaded_zom == false){
    survival_set_modifiers();
    survival_set_challenges();
    zombie_list = generate_zombies(lst_zombies, floor(dificultad));
}else{
    loaded_zom = false
}

create_level(zombie_list, floor(dificultad));

/*
if (load == false){
    survival_load(filename);
    
    set_background_endless();
    set_difficulty_changes();
    
    load = true;
}
