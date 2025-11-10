global.lastroom=room

with(all){
    if variable_instance_exists(id,"part"){
        if part_system_exists(part){
            part_system_clear(part)
        }
    }
}

