/// @description zombie_surprise_attack()
function zombie_surprise_attack() {

	if surprise_attack=false{
	    if __background_get( e__BG.Index, 0 )==poolday_bg 
	    or __background_get( e__BG.Index, 0 )==poolsunset_bg 
	    or __background_get( e__BG.Index, 0 )==poolnight_bg{
	        var yy_temp=choose(f3,f4)
	        repeat(3){
	            with(instance_create(irandom_range(800,1000),yy_temp,zombiegrave_obj)){
	                water=true 
	                obj=choose(zombie1_obj,zombieheadbox_obj,zombiecarecono_obj,zombiecarecubo_obj)
	            }
	            if yy_temp==f3 yy_temp=f4 else yy_temp=f3
	        }
	    }
    
	    if __background_get( e__BG.Index, 0 )==claire_bg
	    or __background_get( e__BG.Index, 0 )==claire2_bg
	    or __background_get( e__BG.Index, 0 )==claire3_bg{
	        var yy_temp=choose(f1,f2,f3,f4,f5)
	        audio_play_sound(zapear2_snd,1,false)
	        repeat(irandom_range(2,4)){
	            var xx_temp=irandom_range(750,1050)
	            with(instance_create(xx_temp,yy_temp,rayo_anim_obj)){
	                sfx=false
	                obj=choose(zombie1_obj,zombieheadbox_obj,zombiecarecono_obj,zombiecarecubo_obj)
	            }
	            if yy_temp==f1{yy_temp=choose(f2,f3,f4,f5)}
	            else if yy_temp==f2{yy_temp=choose(f1,f3,f4,f5)}
	            else if yy_temp==f3{yy_temp=choose(f1,f2,f4,f5)}
	            else if yy_temp==f4{yy_temp=choose(f1,f2,f3,f5)}
	            else{yy_temp=choose(f1,f2,f3,f4)}
	        }
	    }
	}



}
