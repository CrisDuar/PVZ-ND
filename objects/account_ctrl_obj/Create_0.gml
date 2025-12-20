show_menu = false;

yy = 3;
xx = 2.5;
level = 0;

arr = ds_map_keys_to_array(global.acc_ls);
array_sort(arr, true);

//Buttons
btns = ds_list_create();
btns_spr = ds_list_create();

cam = view_camera[0];
_x = camera_get_view_width(cam)/2
_y = camera_get_view_height(cam)/2

ds_list_add(btns, add_button(_x - 100, _y - 78*yy + 400, 40, 40))
ds_list_add(btns_spr, add_button_graph(btn_add_spr, 0, 1, 2, 3))

ds_list_add(btns, add_button(_x - 50, _y - 78*yy + 400, 40, 40))
ds_list_add(btns_spr, add_button_graph(btn_rename_spr, 0, 1, 2, 3))

ds_list_add(btns, add_button(_x + 50, _y - 78*yy + 400, 40, 40))
ds_list_add(btns_spr, add_button_graph(btn_delete_spr, 0, 1, 2, 3))

ds_list_add(btns, add_button(_x + 100, _y - 78*yy + 400, 40, 40))
ds_list_add(btns_spr, add_button_graph(btn_exit_spr, 0, 1, 2, 3))

//Button events

//Remove account
rm_acc = false;

//Rename account
rnm_acc = false;
rnm_acc_nm = "";

//Add account
add_acc = false;
add_acc_nm = "";

//No accounts found, adding a new account
add_noacc = false;
add_noacc_flag = false;
