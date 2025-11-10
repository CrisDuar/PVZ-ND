if instance_exists(boss3_obj) and global.iniciogame=true and global.gameover==false{
    var sh = 0
    if audio_is_playing(darkpain_snd){
        sh = random_range(-1,1)
    }
    draw_sprite_ext(bosshead3_spr,6,1070+sh,610+sh,1,1,0,c_white,1 - boss3_obj.dark_lph)
    draw_sprite_ext(bosshead3_spr,boss3_obj.display_fase,1070,610,1,1,0,c_white,boss3_obj.dark_lph)
}

