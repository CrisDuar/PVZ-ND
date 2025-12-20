function add_button(_x, _y, _xsz, _ysz){
	
	return [_x - _xsz/2, _y - _ysz/2, _x + _xsz/2, _y + _ysz/2, _xsz, _ysz];
}

function add_button_graph(_spr, _default, _hover, _press, _locked){
	
	return [_spr, _default, _hover, _press, _locked]
}

function check_button(_bt){
	
	return (point_in_rectangle(mouse_x, mouse_y, _bt[0], _bt[1], _bt[2], _bt[3]));
}

function draw_button_bounds(_bt){
	
	draw_rectangle(_bt[0], _bt[1], _bt[2], _bt[3], true);
}

function draw_button_sprite(_bt_bounds, _bt_sprite, _lock, _lvl){
	
	var _spr = _bt_sprite[1];
	var _x, _y;
	
	if (_lock){
		_spr = _bt_sprite[4]	
	}else if (_lvl == global.popup_open){
		if (check_button(_bt_bounds)){
			_spr = 	_bt_sprite[2];
		
			if (mouse_check_button(mb_left)){
				_spr = _bt_sprite[3];	
			}
		}
	}
	
	_x = _bt_bounds[0] + _bt_bounds[4]/2;
	_y = _bt_bounds[1] + _bt_bounds[5]/2;
	
	draw_sprite_ext(_bt_sprite[0], _spr, _x, _y, 1, 1, 0, c_white, 1);
		
}