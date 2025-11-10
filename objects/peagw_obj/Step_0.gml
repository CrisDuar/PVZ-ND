event_inherited();
direction=point_direction(x,y-40,mouse_x,mouse_y)

if direction>90
and direction<270{image_xscale=-1}
else
{image_xscale=1}

if p1>0 and sprite_index=gw_headshoot_spr{img=0.64}else{img=0.16}

if sprite_index=gw_headshoot_spr
and image_index>=image_number-0.5{
sprite_index=gw_headidle_spr
tallo=gw_talloidle_spr
helmet=gw_helmetidle_spr
ice=gw_iceidle_spr
}

