if !surface_exists(surfaceFog){
surfaceFog = surface_create(room_width, room_height);
}

surface_set_target(surfaceFog)
draw_clear_alpha(c_black,0)

for (var i = 0; i<9; i++){
    for (var j = 0; j<9; j++){
        if img < 2 {img++}else{img=0}
        draw_sprite_ext(spr,img,floor(xx)+100*i,100+100*j,1,1,0,c_white,1)
    }
}

surface_reset_target();
draw_surface(surfaceFog,0,0)
    
if (global.videoq > 0){
    //Draw just fog
    if !surface_exists(surfaceJustFog){
        surfaceJustFog = surface_create(room_width, room_height);
    }
    
    surface_set_target(surfaceJustFog)
    draw_clear_alpha(c_black,0)
    
    for (var i = 0; i<9; i++){
        for (var j = 0; j<9; j++){
            if img > 0 {img--}else{img=2}
            draw_sprite_ext(spr,img,floor(xx)+100*i,100+100*j,1,1,0,c_white,1)
        }
    }
    
    surface_reset_target();

    draw_surface_ext(surfaceJustFog, -20, 0, 1, 1, 0, c_white, 0.4);
    draw_surface_ext(surfaceJustFog, -50, 0, 1, 1, 0, c_white, 0.2);
}


