if (global.gameover or global.nivelterminado){
	turbo = false;
}

image_alpha = global.iniciogame
image_index = turbo;

if (turbo){
	game_set_speed(120, gamespeed_fps)
}else{
	game_set_speed(60, gamespeed_fps)
}