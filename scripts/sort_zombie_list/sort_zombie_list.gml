/// @description sort_zombie_list(zombielista)
/// @param zombielista
function sort_zombie_list(argument0) {

	lista = argument0

	for(var i = 0; i < ds_list_size(lista)-1; i++){
	    for(var j = i+1; j < ds_list_size(lista); j++){
        
	        var pos1 = get_zombie_points(lista[| i])
	        var pos2 = get_zombie_points(lista[| j])
        
	        if pos1 > pos2{
	            var temp = lista[| i]
	            ds_list_replace(lista, i, lista[| j])
	            ds_list_replace(lista, j, temp)
	        }
	    }
	}

	for(var i = 0; i < ds_list_size(lista); i++){
	    zombie_preview(lista[| i],clamp(3-i,1,3))
	}

	return lista;



}
