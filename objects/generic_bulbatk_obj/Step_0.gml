/*depth=-y-20

//image_angle-=10

if (x+sprite_width-sprite_xoffset)<(__view_get( e__VW.XView, 0 ))
|| (x-sprite_xoffset)>(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ))
|| (y+sprite_height-sprite_yoffset)<(__view_get( e__VW.YView, 0 ))
|| (y-sprite_yoffset)>(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ))
{
 instance_destroy();
}

if image_alpha<1{image_alpha+=0.05}
image_angle-=10

if __background_get( e__BG.Index, 0 )=poolday_bg{
if collision_rectangle(305,334,1055,403,self,false,false)
and distance_to_object(nenufar_obj)>20{
audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))
with(instance_create(x,y,tierra1_obj)){sprite_index=agua1_spr}
with(instance_create(x,y,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
instance_create(x,y,aguaex_obj)
instance_destroy()
}
if y<73{direction=330}
if y>640{direction=45}
}
else{
if y<73{direction=330}
if y>597{direction=45}
}
*/
event_inherited();
_angle -= 10;

//Pool
if (control_obj.stage == 3 
&& collision_rectangle(305,334,1055,403,self,false,false)
&& distance_to_object(nenufar_obj)>20){
	get_sunk();	
}

//logro
if (ds_exists(hit_zom, ds_type_list)){
    if (ds_list_size(hit_zom) >= 5){
        with(logros_obj){strike = true}
    }
}

