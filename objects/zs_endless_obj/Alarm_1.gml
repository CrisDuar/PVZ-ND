/*
if version==1{
    ds_list_clear(zombie_list);
    /*
    ds_list_add(
        zombie_list
        , array(basic, get_zombie_points(basic), get_zombie_odds(basic, lst_data))
        , array(armor1, get_zombie_points(armor1), get_zombie_odds(armor1, lst_data))
        , array(trick1, get_zombie_points(trick1), get_zombie_odds(trick1, lst_data))
        , array(trick2, get_zombie_points(trick2), get_zombie_odds(trick2, lst_data))
        , array(armor2, get_zombie_points(armor2), get_zombie_odds(armor2, lst_data))
    );
    
    ds_list_destroy(zombie_list)
}else{
    zombie_list = generate_zombies();
}*/
if (loaded_zom == false){
    zombie_list = generate_zombies();
}else{
    loaded_zom = false
}

create_level(pt, numwaves, flagnum, flag, zombie_list, a, 1 + dificultad)

/* */
/*  */
