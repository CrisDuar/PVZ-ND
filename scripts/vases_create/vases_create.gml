/// @description vases_create(loots...)
/// @param loots...
function vases_create() {
	var v = ds_list_create();

	for (var i = 0; i<argument_count; i++){
	    ds_list_add(v,argument[i])
	}
	ds_list_shuffle(v)
	return v;
}
