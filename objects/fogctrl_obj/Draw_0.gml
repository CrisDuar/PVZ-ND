if !surface_exists(surfaceFog){
surfaceFog = surface_create(room_width, room_height);
}
var init_x = 0

if facing==-1 init_x = room_width

surface_set_target(surfaceFog)
draw_clear_alpha(c_black,0)

if instance_exists(smokecloud_obj){
    with(smokecloud_obj){
        var img_temp = 0
        if control_obj.night==true img_temp=1
        
        draw_sprite_ext(other.spr,0,floor(x),floor(y),1,1,0,c_white,alpha)
        
        draw_sprite_ext(other.spr,1,floor(x+90),floor(y),1,1,0,c_white,alpha)
        draw_sprite_ext(other.spr,2,floor(x-90),floor(y),1,1,0,c_white,alpha)
        
        draw_sprite_ext(other.spr,0,floor(x),floor(y+90),1,1,0,c_white,alpha)
        draw_sprite_ext(other.spr,1,floor(x),floor(y-90),1,1,0,c_white,alpha)
        
        draw_sprite_ext(other.spr,2,floor(x+60),floor(y+60),1,1,0,c_white,alpha)
        draw_sprite_ext(other.spr,0,floor(x+60),floor(y-60),1,1,0,c_white,alpha)
        draw_sprite_ext(other.spr,1,floor(x-60),floor(y+60),1,1,0,c_white,alpha)
        draw_sprite_ext(other.spr,2,floor(x-60),floor(y-60),1,1,0,c_white,alpha)
    }
}

for (var i = 0; i<tls_x; i++){
    for (var j = 0; j<tls_y; j++){
        if img < 2 {img++}else{img=0}
        draw_sprite(spr,img,floor(xx)+100*i,80+100*j)
    }
}

//PLANT AND ZOMBIES GLOW
instance_glow(glow_destroyed_obj, 0, 0)
instance_glow(plantern_obj, 0, -35)
instance_glow(plantorcha_obj, 0, -35)
instance_glow(z_torch_obj, -60, -90)
instance_glow(molotov_obj, 0, 0)
instance_glow(glow_obj, 0, 0)

if instance_exists(peashooter_obj){
    with(peashooter_obj){
        if (disfraz==2) do_glow(0, -35)
    }   
}
if instance_exists(jumpingplant_obj){
    with(jumpingplant_obj){
        if sprite_index==plantern_spr{
            do_glow(0 ,-35)
        }
    }   
}

if instance_exists(z_molotov_obj){
    with(z_molotov_obj){
        if (fire) do_glow(-60+mlv_xx ,-30+mlv_yy)
    }
}

surface_reset_target();
draw_surface_ext(surfaceFog,0+init_x,0,facing,1,0,c_white,1)

//Draw just fog
if !surface_exists(surfaceJustFog){
surfaceJustFog = surface_create(room_width, room_height);
}

surface_set_target(surfaceJustFog)
draw_clear_alpha(c_black,0)

if instance_exists(smokecloud_obj){
    with(smokecloud_obj){
        var img_temp = 0
        if control_obj.night==true img_temp=1
        
        draw_sprite_ext(other.spr,1,floor(x)+35,floor(y),1,1,0,c_white,alpha)
        
        draw_sprite_ext(other.spr,1,floor(x+110)+35,floor(y),1,1,0,c_white,alpha)
        draw_sprite_ext(other.spr,2,floor(x-110)+35,floor(y),1,1,0,c_white,alpha)
        
        draw_sprite_ext(other.spr,0,floor(x)+35,floor(y+110),1,1,0,c_white,alpha)
        draw_sprite_ext(other.spr,1,floor(x)+35,floor(y-110),1,1,0,c_white,alpha)
        
        draw_sprite_ext(other.spr,2,floor(x+80)+35,floor(y+80),1,1,0,c_white,alpha)
        draw_sprite_ext(other.spr,0,floor(x+80)+35,floor(y-80),1,1,0,c_white,alpha)
        draw_sprite_ext(other.spr,1,floor(x-80)+35,floor(y+80),1,1,0,c_white,alpha)
        draw_sprite_ext(other.spr,2,floor(x-80)+35,floor(y-80),1,1,0,c_white,alpha)
    }
}

for (var i = 0; i<tls_x; i++){
    for (var j = 0; j<tls_y; j++){
        if img > 0 {img--}else{img=2}
        draw_sprite(spr,img,floor(xx)+100*i,80+100*j)
    }
}

surface_reset_target();

if (global.videoq > 0){
    draw_surface_ext(surfaceJustFog, -20*facing+init_x, 0, facing, 1, 0, c_white, 0.2);
    draw_surface_ext(surfaceJustFog, 20*facing+init_x, 0, facing, 1, 0, c_white, 0.2);
    draw_surface_ext(surfaceJustFog, -50*facing+init_x, 0, facing, 1, 0, c_white, 0.2);
    draw_surface_ext(surfaceJustFog, 50*facing+init_x, 0, facing, 1, 0, c_white, 0.2);
}else{
    draw_surface_ext(surfaceJustFog, 0, 0, facing, 1, 0, c_white, 0.5);
}

