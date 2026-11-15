

var _c = [0, 0, 0]


for (var i = 0; i < min(array_length(global.shopValues), ds_grid_height(global.shopText) - 1); i++){
    
    var _sprite_index = real(global.shopText[# 0, i + 1])
    var _type = real(global.shopText[# 1, i + 1])
    var _cond = global.shopText[# 2, i + 1]
    
    show_debug_message(_cond)
    
    var _name_en = global.shopText[# 3, i + 1]
    var _desc_en = global.shopText[# 4, i + 1]
    var _name_es = global.shopText[# 5, i + 1]
    var _desc_es = global.shopText[# 6, i + 1]
    
    var _cost = struct_get_default(global.shopValues[i], "cost", 1000)
    var _locked_cond = struct_get_default(global.shopValues[i], "locked_cond", "niveles")
    var _locked_value = struct_get_default(global.shopValues[i], "locked_value", 0)
    
    with(instance_create_layer(160 + 192*_c[_type], 1056 + 640*_type, "Instances", shopthings_obj)){
        
        thing = _sprite_index
        type = _type
        cost = _cost
        cond = _cond
        
        entext = _name_en;
        desc_en = _desc_en;
        
        estext = _name_es;
        desc_es = _desc_es;
        
        locked_cond = _locked_cond
        locked_value = _locked_value
        
        entext_lock = shop_get_lock_message(_locked_cond, _type, _locked_value, "en")
        estext_lock = shop_get_lock_message(_locked_cond, _type, _locked_value, "es")
    }
    
    _c[_type]++
}
