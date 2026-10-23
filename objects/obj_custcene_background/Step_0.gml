if (global.indice == 1) {
	sprite_index = spr_cutscene_1
}

if (global.indice == 3 || global.indice == 5) {
	sprite_index = spr_cutscene_2
}

if (global.indice == 4) {
	sprite_index = spr_cutscene_2_blur
}

if (global.indice == 7 || global.indice == 13) {
	sprite_index = spr_cutscene_blank
}

if (global.indice == 11) {
	sprite_index = spr_cutscene_3
}

if (global.indice == 14) {
	sprite_index = spr_cutscene_4
}

if (global.indice == 15) {
	instance_destroy()
}