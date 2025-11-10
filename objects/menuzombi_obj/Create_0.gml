event_inherited();
list_n=1500
list_type=menuzombi_obj
packet_type = 1;

var _list = ds_list_create()
multno=collision_rectangle_list(list_n,y+1,-200,0,list_type,false,false,ds_list_create(),false)
ds_list_destroy(_list);

