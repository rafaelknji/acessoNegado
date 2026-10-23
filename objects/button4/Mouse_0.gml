if (mouse_check_button_pressed(mb_left)) {
    sprite_index = spr_button4_press;

    if (global.actualDigit < 4) {
        global.tryCode[global.actualDigit] = 4;
        global.actualDigit++;
    }

    show_debug_message("presses");
}