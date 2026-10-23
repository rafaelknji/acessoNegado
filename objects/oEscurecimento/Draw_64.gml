// =================================
// ESCURECER A TELA TODA
// =================================

if (fade_troca_sala > 0) {

    draw_set_color(c_black);
    draw_set_alpha(fade_troca_sala);

    draw_rectangle(
        0,
        0,
        display_get_gui_width(),
        display_get_gui_height(),
        false
    );

    draw_set_alpha(1);
    draw_set_color(c_white);
}