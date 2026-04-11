event_inherited();
//Depth
if gameover=false{
depth=-y-12;
}

//RUSH
var _lvl_id = string(zombispawn_obj.lvl_type) + "_" + string(zombispawn_obj.lvl_id)

if (control_obj.multijugador==true or _lvl_id = "0_23" or room==izombie_rm) and warn_rush==false{
    warn=true
    warn_rush=true
    if control_obj.multijugador or room==izombie_rm {hspeed=0} else {hspeed=irandom_range(-10,-14)}
}

//velocidad
if global.gameover=false and warn_rush==true{
    if hspeed<0 and x<1100{hspeed+=0.25+0.5*water}
    if hspeed>0{hspeed-=0.25}
}
else{
    hspeed=0
}

if warn==false{
    warn_img+=warn_spd
    
    if warn_img>=warn_sfx_frame and warn_sfx==false{
        warn_sfx=true
        audio_play_sound(choose(brains3_snd,brains4_snd),0.9,false)
    }
    
    if warn_img>=33 and warn_rush==false{
        warn_rush=true
        audio_play_sound(mazo1_snd,10,false)
        instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),y-60,destroygrave_obj)
        hspeed=irandom_range(-10,-14)
    }
    
    if warn_img>=38{
        warn = true
    }
}

//AUTODESTRUCCION
if destroyself=true and global.gameover=false{vida -= 3; shake=1; spawnzombie=1}

//SPRITES
if control_obj.multijugador{
     if vida>400{sprite_index=estatua1_spr}
    else if vida>200{sprite_index=estatua2_spr}
    else{sprite_index=estatua3_spr}
}else{
    if vida>200{sprite_index=estatua1_spr}
    else if vida>100{sprite_index=estatua2_spr}
    else{sprite_index=estatua3_spr}
}
//Stuff
timecongelado=0
timestop=0
congelado=true

if localkami==true
and warn_rush==true
and hspeed>=-1{vida=0}

//NORMAL
if (vida <= 0){
    if (spawnzombie > 0.5){
        if control_obj.kamistatues==true{with(instance_create(x,y,choose(z_zombie_obj,z_conehead_obj,z_headbox_obj,z_buckethead_obj))){image_alpha=0; horde_id=other.horde_id; walkspeed=random_range(-0.6,-1.2)}}
        else{with(instance_create(x,y,z_zombie_obj)){horde_id=other.horde_id; image_alpha=0}}
        audio_play_sound(choose(zombieambient5_snd,zombieambient6_snd),1.2,false)
        }
    repeat(5){instance_create(x+random_range(-20,20),y+random_range(-15,15)+30*water,pedazoroto_obj)}
    instance_create(x,y-60+30*water,destroygrave_obj)
    audio_play_sound(choose(piedraded_snd,piedraded2_snd),1.2,false)
    zombiedrop(false);
    instance_destroy();
}

if global.nivelterminado=true{
spawnzombie=0
vida=0
}

