/// @description  @description Capture async events from NekoPresence.

if os_is_network_connected(){
    var ev_type = async_load[? "event_type"];
    
    if (ev_type == "DiscordReady"){
        //window_set_caption("We're ready!");
        ready = true;
        //show_debug_message("date: " + string(date_current_datetime()));
        np_setpresence_timestamps(date_current_datetime(), 0, false);
        np_setpresence_more("", "Game logo", false);
        
        // buttons!
        // clickable for anybody except you for some reason, it's a bug in Discord not in NP
        // the NodeJS implementation has this too.
        np_setpresence_buttons(0, "Itchio", "https://crisdevelop.itch.io/pvznd");
        np_setpresence_buttons(1, "Gamejolt", "https://gamejolt.com/games/pvznd/641658");
        // ^^ you can comment out this line
        // the button id 1 is optional, 0 is required if you want buttons to appear.
        // that means you cannot have a button of id 1 and that's it
        // you must define a button 0, and then optionally a button id 1.
        // the maximum amount of buttons is defined in a macro DISCORD_MAX_BUTTONS (and is equal to 2)
        // it's a limitation of the discord client, trying to set more than 2 horribly fails.
        
        //np_setpresence() should ALWAYS come the last!!
        //np_setpresence("this is a state", "this is some details", "icon", "");
        np_setpresence(global.details, global.gamestate, "icon", "")
        
        // passing a URL will add this sprite asynchronously via *internets*
        sprite_add(np_get_avatar_url(async_load[? "user_id"], async_load[? "avatar"]), 1, false, false, 0, 0);
    }
}

