x=282
y=84

tile_x=x
tile_y=y

spd=0
hspd=0
vspd=0

padx=0;
pady=0;

if __background_get( e__BG.Index, 0 )==poolday_bg{
    image_xscale=0.99
    image_yscale=0.9
}

xx_place = x
yy_place = y

scale=1
//if global.vstouch=true instance_destroy();

connected=0
var_str = "gamepad_plant"
type=0

//Versus mode controls
up="p_up"
down="p_down"
left="p_left"
right="p_right"

//MULTI TOUCH
init_x = 0;
init_y = 0;
init_upd = true;
mt_move = false;
ref_x = x;
ref_y = y;

//MT Controls
t_plant = 0
t_shovel = -5;
t_ableshovel = false
t_spd = 0

//sprites
spr1 = plantamulti_spr
spr2 = plantamulti2_spr

