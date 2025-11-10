/// @description peanut_update()
function peanut_update() {
	if vida<=maxhp{
	wallbroken=false
	if sprite_index==imgshot sprite_index=peanutshoot1_spr
	if sprite_index==imgidle sprite_index=peanut1_spr
	imgshot=peanutshoot1_spr
	imgidle=peanut1_spr
	}

	if vida<=700{
	wallbroken=true
	if sprite_index==imgshot sprite_index=peanutshoot2_spr
	if sprite_index==imgidle sprite_index=peanut2_spr
	imgshot=peanutshoot2_spr
	imgidle=peanut2_spr
	}

	if vida<=350{
	wallbroken=true
	if sprite_index==imgshot sprite_index=peanutshoot3_spr
	if sprite_index==imgidle sprite_index=peanut3_spr
	imgshot=peanutshoot3_spr
	imgidle=peanut3_spr
	}



}
