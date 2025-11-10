/// @description CREATE VASES
if crrnt_hrd < hordes{
    var l = 0
    var p = 0
    var vase = h[crrnt_hrd]
    var size = ds_list_size(h[crrnt_hrd])

    for (var i = 0; i<floor(size/clmn); i++){
        for (var j = 0; j<clmn; j++){
            with(instance_create(x_start[crrnt_hrd]-100*i,164+100*j,vase_obj)){
                loot = vase[| l]
                
                if (object_get_parent(loot) = menuplants_obj and p<2)
                or object_get_name(loot)=="planternslot_obj"{
                    p++
                    image_index=1
                }
            }
            l++
        }
    }
    crrnt_hrd++
    t=120
    
    with(typeplant2_obj){
        instance_destroy();
    }
    
    with(parentattack_obj){
        instance_destroy();
    }
    
    with(menuplants_obj){
        instance_destroy();
    }
    
    //Destroy projectiles
    with(bulbproj_par_obj){
        instance_destroy();
    }
    
    with(parentproj_obj){
        instance_destroy();
    }
    
}else{
    zombispawn_obj.h=zombispawn_obj.fn
}

