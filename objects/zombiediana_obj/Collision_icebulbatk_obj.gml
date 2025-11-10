//nivel 1global.

//NORMAL
if global.gameover=false and global.nivelterminado=false{
    audio_play_sound(boxhurt_snd,1,false);
    image_alpha=0.5
    
    if !collision_line(x-340, y-5, x, y-5,zomgrave_obj, false, false) vida-=5 else vida-=15
}

