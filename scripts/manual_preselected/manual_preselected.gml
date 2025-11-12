/// @description manual_preselected(type, seedpacket1_obj...)
/// @param _is_zombie
/// @param _packets
function manual_preselected(_is_zombie, _packets) {
	var xx = 129;
	if (control_obj.multijugador) xx=197
	
	for (var i=0; i < array_length(_packets); i++){
		
		create_packet_ingame(xx + 960*_is_zombie, 101+(63*i), _is_zombie, _packets[i], -1)
	    //instance_create_layer(xx + 960*_is_zombie, 101+(63*i), "GUI", _packets[i])
	}
}
