draw_sprite(luzcafe_spr,0,x,y-50)
event_inherited();

draw_set_alpha((1/2)*sin(degtorad(halo))+0.5)
draw_sprite(planternglow_spr,0,x,y-35)
draw_set_alpha(1)

