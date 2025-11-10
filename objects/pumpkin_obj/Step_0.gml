event_inherited();

depth=-y+40

back.depth = (-y+5)+(x/150) - 2;

//vida
if vida<=maxhp{sprite_index=pumpkin_b1_spr; wallbroken=false; costume_img = pumpkin_f1_spr}
if vida<=1000{sprite_index=pumpkin_b2_spr; wallbroken=true; costume_img = pumpkin_f2_spr}
if vida<=500{sprite_index=pumpkin_b2_spr; wallbroken=true; costume_img = pumpkin_f3_spr}

