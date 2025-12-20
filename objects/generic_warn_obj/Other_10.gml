/// @desc Closing the pop up

global.popup_open--;
if (instance_exists(textbar_id)) instance_destroy(textbar_id);
instance_destroy();