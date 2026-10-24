if (global.indice == 0 && !global.rolouCutscene) {
    if (sprite_index != spr_cutscene_1_1) {
        sprite_index = spr_cutscene_1_1;
        image_index = 0;
        image_speed = 1;
    }
}

if (global.indice == 3 && !global.rolouCutscene) {
    if (sprite_index != spr_cutscene_2_1) {
        sprite_index = spr_cutscene_2_1;
        image_index = 0;
        image_speed = 1;
    }

    if (image_index >= image_number - 1) {
        image_speed = 0;
        image_index = image_number - 1;
        global.rolouCutscene = true;
    }
}