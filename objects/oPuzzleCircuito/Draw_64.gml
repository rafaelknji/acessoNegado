if (concluido) {

    var texto_atual = string_copy(
        texto_acesso,
        1,
        letras_visiveis
    );

    if (letras_visiveis < string_length(texto_acesso)) {
        if ((contador_texto div 2) mod 2 == 0) {
            texto_atual += "_";
        }
    }

    var texto_x = x + 157;
    var texto_y = y + 78;

    if (view_enabled && view_visible[0]) {
        var cam = view_camera[0];

        texto_x = (texto_x - camera_get_view_x(cam))
                * display_get_gui_width()
                / camera_get_view_width(cam);

        texto_y = (texto_y - camera_get_view_y(cam))
                * display_get_gui_height()
                / camera_get_view_height(cam);
    }

    draw_set_font(fntTerminal);
    draw_set_color(c_lime);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(
        texto_x,
        texto_y,
        texto_atual
    );

    draw_set_font(-1);
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}