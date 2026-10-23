sprite_index = spr_check_button_press

if (mouse_check_button_pressed(mb_left)) {
	if (global.actualTry == 1) {
		for (i = 0; i < 4; i++) {
			global.try1[i] = global.tryCode[i]
		}
	} else if (global.actualTry == 2) {
		for (i = 0; i < 4; i++) {
			global.try2[i] = global.tryCode[i]
		}
	} else if (global.actualTry == 3) {
		for (i = 0; i < 4; i++) {
			global.try3[i] = global.tryCode[i]
		}
	} else if (global.actualTry == 4) {
		for (i = 0; i < 4; i++) {
			global.try4[i] = global.tryCode[i]
		}
	} else if (global.actualTry == 5) {
		for (i = 0; i < 4; i++) {
			global.try5[i] = global.tryCode[i]
		}
		
		for (i = 0; i < 4; i++) {
			global.try1[i] = global.try2[i]
			global.try2[i] = global.try3[i]
			global.try3[i] = global.try4[i]
			global.try4[i] = global.try5[i]
			global.actualTry = 4;
		}
	}
	
	global.actualTry++;
	
	if (global.tryCode[0] == global.pinCode[0] && global.tryCode[1] == global.pinCode[1] && global.tryCode[2] == global.pinCode[2] && global.tryCode[3] == global.pinCode[3]) {
		show_debug_message("Puzzle Finalizado")
		
		// Lógica de final de puzzle.
	} else {
			for (i = 0; i < 4; i++) {
				global.tryCode[i] = noone;
				global.actualDigit = 0;
			}
	}
}