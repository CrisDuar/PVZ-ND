var n_devices = ds_list_size(global.gamepad_list)

if n_devices==1{
    gamepad[0] = global.gamepad_list[| 0]

    gamepad_pick_side(0)
    if done[0]==true instance_destroy();
}else if n_devices>1{
    gamepad[0] = global.gamepad_list[| 0]
    gamepad[1] = global.gamepad_list[| 1]

    gamepad_pick_side(0)
    gamepad_pick_side(1)
    if done[0]==true and done[1]==true instance_destroy();
}else{
    instance_destroy();
}

