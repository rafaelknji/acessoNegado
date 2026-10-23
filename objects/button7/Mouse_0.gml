if (mouse_check_button_pressed(mb_left)) {
    sprite_index = spr_button7_press;

    if (global.actualDigit < 4) {
        global.tryCode[global.actualDigit] = 7;
        global.actualDigit++;
    }

    show_debug_message("presses");
}