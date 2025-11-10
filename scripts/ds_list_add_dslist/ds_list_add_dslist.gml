/// @description ds_list_add_dslist(list id, list to add)
/// @param list id
/// @param  list to add
function ds_list_add_dslist(argument0, argument1) {
	var lst = ds_list_create();
	lst = ds_list_copy(lst, argument1)

	for(var i = 0; i < ds_list_size(lst); i++){
	    ds_list_add(argument0, lst[| i])
	}



}
