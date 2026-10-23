if (mouse_check_button_pressed(mb_left)) {
    sprite_index = spr_button6_press;

    if (global.actualDigit < 4) {
        global.tryCode[global.actualDigit] = 6;
        global.actualDigit++;
    }

    show_debug_message("presses");
}