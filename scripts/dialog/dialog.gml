/// @description dialog(esp_text, eng_text, img, playsong, num)
/// @param esp_text
/// @param  eng_text
/// @param  img
/// @param  playsong
/// @param  num
function dialog(argument0, argument1, argument2, argument3, argument4) {

	estxt[argument4]=argument0
	entxt[argument4]=argument1
	img[argument4]=argument2
	playsong[argument4]=argument3

	mot_st[argument4, 0] = -1
	mot_st[argument4, 1] = -1
	tml[argument4] = -1
	close=argument4




}
