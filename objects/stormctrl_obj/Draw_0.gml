if !surface_exists(surfaceStorm){
surfaceStorm = surface_create(room_width, room_height);
}

surface_set_target(surfaceStorm)
draw_clear_alpha(c_black,0)
draw_rectangle_colour(0,0,room_width,room_height,c_white,c_white,c_white,c_white,false)

//GLOW
if instance_exists(glow_destroyed_obj){
    with(glow_destroyed_obj){
        draw_set_blend_mode(bm_subtract)
        var grow = (1/2)*sin(degtorad(glow))+0.5
        draw_sprite_ext(glowfog_spr,0,x,y,(glow_power/2)+(grow/6),(glow_power/2)+(grow/6),0,c_black,glow_alpha*0.3)
        draw_set_blend_mode(bm_normal)
    }
}

if instance_exists(plantern_obj){
    with(plantern_obj){
        var grow = (1/2)*sin(degtorad(glow))+0.5
        draw_set_blend_mode(bm_subtract)
        draw_sprite_ext(glowdark_spr,0,x,y-35,(glow_power/2)+(grow/6),(glow_power/2)+(grow/6),0,c_black,glow_alpha*0.3)
        draw_set_blend_mode(bm_normal)
    }
}

if instance_exists(jumpingplant_obj){
    with(jumpingplant_obj){
        if sprite_index==plantern_spr{
            var grow = (1/2)*sin(degtorad(glow))+0.5
            draw_set_blend_mode(bm_subtract)
            draw_sprite_ext(glowdark_spr,0,x,y-35,(glow_power/2)+(grow/6),(glow_power/2)+(grow/6),0,c_black,glow_alpha*0.3)
            draw_set_blend_mode(bm_normal)
        }
    }   
}

surface_reset_target();

draw_surface_ext(surfaceStorm,0,0,1,1,0,c_black,alpha)

draw_set_alpha(thunderalpha)
draw_rectangle_colour(0,0,room_width,room_height,c_white,c_white,c_white,c_white,false)
draw_set_alpha(1)

