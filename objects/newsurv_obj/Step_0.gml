if global.lang="en"{
image_index=0
}

if global.lang="es"{
image_index=1
}

if file_exists("survival.ini"){
sprite_index=continue_spr
}else{sprite_index=newgame_spr}

