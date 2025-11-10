event_inherited();
depth=-y+15

//quedarse quieto
//if distance_to_object(eatfather_obj)>=0.5{image_speed=0.16}

//vida
if vida<=maxhp{sprite_index=tallnut1_spr; wallbroken=false}
if vida<=1500{sprite_index=tallnut2_spr; wallbroken=true}
if vida<=500{sprite_index=tallnut3_spr; wallbroken=true}

