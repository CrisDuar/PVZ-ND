event_inherited();
//Stuff
hspeed=0
timecongelado=0
timestop=0
congelado=true
image_speed=0.16


if vida>100{sprite_index=zombiediana1_spr}
else{sprite_index=zombiediana2_spr}

//MORIR
if vida <= 0 and global.dianas<3 
and global.gameover=false and global.nivelterminado=false{
    global.dianas+=1
    
    _depth = depth-1
    
    if global.dianas>=3{
        if (control_obj.multijugador or room==iplant_rm){
			
			zombispawn_obj.sprite = plantswin2p_spr;
			global.zombieswin = false;
        }
		
		if (room != izombie_rm){
			with(zombispawn_obj){
				create_prize(other.x - 35, other.y - 50);
			}
		}
    }
    
    drop(x-40, y-30+30*water, diana_spr, 0, true, image_blend, y, _depth)
    drop(x-25, y-92+30*water, zombiehead_spr, 0, false, image_blend, y, _depth)
    drop(x, y-30+30*water, brazo_spr, 5, false, image_blend, y, _depth)
    drop(x-27, y-105+30*water, gorra2_spr, 0, false, image_blend, y, _depth)

    with(instance_create(x,y,zombieded_obj)){
        water=other.water
        image_blend=other.image_blend;
        sprite_index=dianaded_spr
        depth=other.depth
		
        if global.dianas>=3 depth=-10000
    }

    instance_destroy();
}