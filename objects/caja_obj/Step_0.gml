depth=-y-5

if loot==noone{
    //WEATHER BOSS:
    if instance_exists(boss3_obj){
        if (boss3_obj.plntrn_n > clamp(boss3_obj.dark_fase,0,2) and !instance_exists(planternslot_obj) and !instance_exists(plantern_obj)){
        
            boss3_obj.plntrn_n=0
            
            var plantern_exists = false
            
            with(caja_obj){
                if (loot == planternslot_obj) plantern_exists = true;
                loot=noone      
            }
            
            loottype=1
            loot=planternslot_obj
            spr = object_get_sprite(loot)
            
        }else{
            if a<=100 and a>75{
            
                if (x <= 450) loot = noone;
                
                loottype=0
                var b = irandom(100)
                if b<=100 and b>=25{loot=choose(z_zombie_obj, z_paperthrower_obj,z_imp_obj)}
                if b<25 and b>0{loot=choose(z_newspaper_obj,z_skeleton_obj,z_gardener_obj)}
            }else{
                loottype=1
                
                var b = irandom(100)
                if b<=100 and b>=25{loot=choose(menusingcherry_obj,setatoxicaslot_obj,electripearslot_obj,levicottonslot_obj)}
                if b<25 and b>0{loot=choose(ghostpepperslot_obj,cherrymenu_obj,tallnutslot_obj,menusetahielo_obj,bloverslot_obj)}
            }
        }
    }else{
        if a<=100 and a>55{
            loottype=0
        
            var b = irandom(100)
            if b<=100 and b>25{loot=choose(z_headbox_obj,z_paperthrower_obj,z_imp_obj)}
            if b<=25 and b>0{loot=choose(z_newspaper_obj,z_skeleton_obj,z_gardener_obj)}
        }
        
        if a<=55 and a>10{
            loottype=1
        
            var b = irandom(100)
            if b<=100 and b>25{loot=choose(menupea_obj,menusnpea_obj,menupuff_obj,narcisoslot_obj,menuicelettuce_obj,potatommenu_obj)}
            if b<=25 and b>0{loot=choose(menusingcherry_obj,narcisoslot_obj,menuicelettuce_obj,menugoldbloom_obj)}
        }
        
        if a<=10 and a>=0{
            loottype=2
            loot=choose(silvercoin_obj,goldencoin_obj,billete_obj)
        }
    }
}else if loot==menugoldbloom_obj and instance_exists(rainseed_obj){
    loot=choose(menusingcherry_obj,narcisoslot_obj,menuicelettuce_obj)
}

if timer>0{
    if timer<=60*10{
        sh=1
        if snd==false{
        audio_play_sound(boxshake_snd,1,false)
            snd=true
        }
    }
    if (global.gameover=false) timer--
}else{
    audio_play_sound(lanzar_snd,1,false)
    drop(x,y-5,sprite_index,image_index,false,image_blend,y,depth-10)
    instance_destroy();
}

if image_xscale>1 image_xscale-=0.05
if image_yscale<1 image_yscale+=0.05
if image_alpha<1 image_alpha+=0.05

if vida>70{image_index=0}
else if vida>30{image_index=1}
else{image_index=2}

///BOOST
if collision_rectangle(x-110,y-140,x+110,y+90,plantern_obj,false,false){
    if alpha<1 alpha+=0.05
}else{
    if alpha>0 alpha-=0.05
}

if vida <=0{
    audio_play_sound(boxdestroy_snd,1,false)
    instance_create(x,y-50,destroygrave_obj)
    switch(loottype){
        case 0://ZOMBIE
            with(instance_create(x,get_closest_row(y),loot)){
                image_alpha=0
            }
        break
        
        case 1://PLANT
            with(instance_create(x,y-5,loot)){
                image_xscale=0.7
                image_yscale=0.7
                type=2
            }
        break
        
        case 2://MONEY
            instance_create(x,y-60,loot)
        break
    }
    instance_destroy();
}

if (collision_rectangle(305,284,1055,423,self,false,false) and __background_get( e__BG.Index, 0 )=poolday_bg) 
or (collision_rectangle(x-40,y,x-10,y,charco_obj,false,false))
{water=true}else{water=false}

spr = object_get_sprite(loot)

