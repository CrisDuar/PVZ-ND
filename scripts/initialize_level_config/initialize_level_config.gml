function initialize_level_config(){
	
    // Music that can be used in levels
    
    enum song_id{
        CHOOSE_YOUR_SEEDS,
        ZEN_GARDEN,
        MAIN_MENU,
        MAPOLECTION,
        GRASSWALK,
        GRASSWALK_FW,
        ULTIMATE_BATTLE_1,
        ULTIMATE_BATTLE_2,
        LOONBOON,
        DEMO_MINIGAME,
        HARDMODE_DAY,
        HARDMODE_DAY_FW,
        
        MOONGRAINS,
        MOONGRAINS_FW,
        HARDMODE_NIGHT,
        HARDMODE_NIGHT_FW,
        BOSS1,
        
        ROBERT_INTRO,
        WATERY_GRAVES,
        WATERY_GRAVES_FW,
        HARDMODE_POOL,
        HARDMODE_POOL_FW,
        BOSS2,
        
        CLAIRE_INTRO,
        SPOOK_BRAINS,
        SPOOK_BRAINS_FW,
        HARDMODE_WEATHER,
        HARDMODE_WEATHER_FW,
        BURNOUT,
        BURNOUT_FW,
        BOSS3_1,
        BOSS3_2,
        BOSS3_3,
        BOSS3_4,
        CEREBRAWL
        
        
    }
    
    global.level_music = [
        music_chooseseeds_snd,
        music_newplant_snd,
        music_mainmenu_snd,
        music_levelselection_snd,
        
        grasswalk_sng,
        grasswalk_fw_sng,
        
        music_ultimatebattleday_snd,
        music_ultimatebattlenight_snd,
        music_loonbon_snd,
        music_demostrationminigame_snd,
        
        music_hardbattle_snd,
        finalhardbattle_sng,
        
        moongrains_sng,
        music_finalwavenight_snd,
        
        hardbattle2_sng,
        finalhardbattle2_sng,
        boss1_sng,
        
        robert_sng,
        pool_sng,
        poolhorde_sng,
        
        poolnight_sng,
        poolnighthorde_sng,
        boss2_sng,
        
        claire_sng,
        spookbrains_sng,
        finalspookbrains_sng,
        
        clairehard_sng,
        clairehard_final_sng,
        
        burnout_sng,
        burnout_final_sng,
        boss3_1_sng,
        boss3_2_sng,
        boss3_3_sng,
        boss3_4_sng,
        
        cerebrawl_sng,
        
        shop_sng
    ]
    
    global.level_reward_music = [
        newplant_snd,
        finalprize_snd
    ]
}