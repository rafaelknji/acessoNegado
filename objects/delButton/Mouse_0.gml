sprite_index = spr_del_button_press

if (mouse_check_button_pressed(mb_left)) {
	if (global.actualDigit > 0) {
	var dmone = global.actualDigit
	dmone--
	global.tryCode[dmone] = noone;
	global.actualDigit--;
	}
}