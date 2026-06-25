event_inherited();

broke=firehit_spr
particle=fireparticle_spr
snd1=fireimpact_snd
snd2=fireimpact_snd
spr = fireball_spr
dmg_zom = 15;

part=part_system_create()
part_system_depth(part, -y-90);
p1=part_type_create()

part_type_sprite(p1,firepart_spr,0,0,1);
part_type_size(p1,0.25,1.25,-0.005,0);
part_type_orientation(p1,0,360,0,0,0);
part_type_color2(p1,c_orange,c_red);
part_type_alpha3(p1,1,1,0);
part_type_blend(p1,1);
part_type_direction(p1,85,125,0,1);
part_type_speed(p1,0.25,1.5,0,0);
part_type_life(p1,2,8);

apply_effect = function(){
	
	var _xs1 = 1;
	var _id = id;
	var _xx = other.x;
	var _yy = other.y;
	
	if hspd<0 or (direction > 90 and direction < 270){
	    _xs = 0;
	}
	
	with(parentattack_obj){
		if (id != _id){
			if (collision_rectangle(_xx - 50 + 50*_xs, _yy, _xx + 50*_xs, _yy + 20, self, false, false)){
				if control_obj.invisible==false image_alpha=0.5
				vida -= 5
				stop=false;
				frozenstop=0;
				congelado=false;
				timecongelado=0;
				image_blend=c_white
			}
		}
	}
	
}