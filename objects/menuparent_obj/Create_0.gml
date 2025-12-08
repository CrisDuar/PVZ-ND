select=0
localselect=0
color=c_black
selectanim=0//Animación de cuando está seleccionado
cantselect=false
type=0//0=normal 1=cinta 2=suelto 3=lluvia
timer=0
alpha=0
subiendo=false//cinta

t_rechar=0//Temporizador para la recarga
sd_rechar=true//Se divide el tiempo entre 3 para la sudden death?
t_mult=1
list_n=248
list_type=menuplants_obj
packet_type = 0;

multno=0//collision_rectangle_list(list_n,y+1,-200,0,list_type,false,false,ds_list_create(),false)
//Número en el modo conveyor del multijugador

out_select = false

draw_cost=true
draw_select=true
draw_load=true
draw_lock=true

//to Edit

//Tile offset
xx = 0;
yy = 0;

plant = 0; //Plant object
sprite = 0; //Plant sprite
cost = 0;
timer = 0; //Recharge time
recargstart = true;//Recarga al empezar el nivel?

vs_recargstart = true;
vs_cost = 0;
vs_recharge = 0;

vs_set = false;

xmod = 1;